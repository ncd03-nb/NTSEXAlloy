# NexAlloy ROM bridge and manager

GPL-3.0 integration of a generic in-process hook engine with the original signed
NexAlloy-XES module. **Vector is removed from the ROM.** No init daemon, Zygisk,
root-manager module or privileged startup service is installed for this bridge.

The ROM contains a management-only system app, `com.hma.nexalloy`, in
`/system_ext/app/NexAlloyManager`. It never bundles or silently installs the
NexAlloy APK. When the original module is missing, it offers the author's release
page: https://github.com/gnadgnaoh/NexAlloy-XES/releases/ . The user downloads and
installs the APK normally. Existing user data is not erased during migration.

## Supported Android versions

Android **14 and newer (API 34+)**. Framework patching, runtime entry points and
manager packaging enforce this minimum. The actual framework SDK is used, not
the vendor policy version or device launch API. Android 13 and older skip NexAlloy
and remove a previously bundled manager; Vector is still removed during migration.

Android 17 was validated on OPlus (module 2.0.111, 293 YouTube hooks, ART
optimization, scope/master controls) and HyperOS 4 (module 2.0.112, Facebook
startup and YouTube resources/settings/playback). Android 14–16 currently have
host/build coverage, not a new physical-device validation of this integration.

## Behavior

- Supported packages come from `META-INF/xposed/scope.list` in the installed,
  signer-verified module APK, not a compiled application list or feature catalog.
- The master switch defaults **off**. Scope selections persist separately and
  are intersected with the current module's declared packages after updates.
- Selecting an application opens a bottom sheet: Open, App info, Force stop,
  Re-optimize. A lower-right button opens the original NexAlloy settings UI.
- Re-optimize stops the selected app and requests ART `verify` compilation,
  discarding precompiled AOT code; it does not launch the app automatically.
  Android 14+ uses the existing system-server ART Service API with a scoped
  snapshot and cancellation timeout; it does not invoke shell-only compile
  commands.
- Only the release-signed ROM manager may change master/scope or invoke app
  management actions. Package targets must belong to the verified module scope.
  System-UID processes are excluded from force-stop/compile operations.
- The original module remains signed and unchanged. Its libxposed preference
  service is hosted by SettingsProvider. Other apps cannot write module settings.
- Native code loads only inside enabled target applications; there is no global
  Zygote injection. Changing scope or master restarts affected application processes.
- HyperOS attaches the opted-in module before Application construction, ahead of
  Facebook's custom DEX initialization. OPlus retains its existing late entry.
  Verified target processes receive local hidden-API reflection access so real
  Android inflation methods remain visible to the module. This does not change
  SELinux, global hidden-API settings, or other applications' VM policy.
- The API shim provides invocation-local object extras used by before/after hooks,
  including non-Serializable values; state is not shared between invocations.
- The shim also supplies `android.app.AndroidAppHelper` application/package/process
  lookup APIs used by the original TikTok and Instagram download hooks. Queries
  use live ActivityThread state, including bound app metadata before Application
  creation, rather than retaining an Activity or a global context override.

The pinned release signer is
`41b88671a623ad293d06fb1e3e396aaf22cafba8948e3cdec028dc95f2f8e8ba`.
Signing-key rotation must carry a verified lineage. Unsupported module API levels
or signatures are rejected. Module support depends on the installed release and
target application's version; an arbitrary future release is not guaranteed.

## Integration

After the normal NTManager smali has been copied into the decoded framework:

```sh
python3 nexalloy-rom/install.py --framework-tree /path/to/framework.jar.out --sdk 34
python3 nexalloy-rom/install.py /path/to/images
```

For a standalone tree without vendor policy metadata, pass the matching
`--vendor-policy-version`, e.g. `34.0`. The second command removes the ROM-owned
Vector manager/init/payload, SELinux block and filesystem metadata, then installs
the manager. It does not delete unrelated root modules or user data.

`patch-jar.py` patches an existing NTManager-enabled framework JAR without changing
other DEX entries. It writes a result into a separate work directory, verifies
class inventories and unchanged ZIP entries, and never overwrites the input JAR.

## Build and tests

The Java source, native/API shim smali, compatibility patches, controller source,
licenses and SHA256 manifests are included here. Provide the official libxposed
API/interface 102.0.0 JARs when rebuilding:

```sh
python3 build.py --android-jar /sdk/platforms/android-37.0/android.jar \
  --d8-jar /sdk/build-tools/37.0.0/lib/d8.jar \
  --api-jar api.jar --interface-jar interface.jar --baksmali-jar baksmali.jar \
  --smali-jar smali.jar
python3 test_integration.py -v
python3 test_art_optimizer.py -v
cd controller-app
./gradlew :app:assembleRelease
```

Sign the resulting manager with the ROM manager key expected by the service.
The prebuilt APK's digest is in `app/SHA256SUMS`; engine/bridge digests are in
`payload/SHA256SUMS`. Never include compile-only ABI stubs in the runtime DEX.
`--smali-jar` rebuilds the API shim and updates its runtime checksum pin.
`tests/HookExtrasProbe.java` exercises the rebuilt shim on Android, checking
inherited methods, non-Serializable object identity, invocation isolation and nulls.

Host checks cover removal boundaries, metadata/hash updates, symlink rejection,
idempotent framework integration, unknown layouts and payload contents. Host
validation does not replace a boot and module-hook test on the target Android ROM.
