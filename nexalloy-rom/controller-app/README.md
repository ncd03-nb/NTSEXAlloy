# NexAlloy Manager

Management-only UI for the ROM bridge documented in [../README.md](../README.md).
Installed at `/system_ext/app/NexAlloyManager/NexAlloyManager.apk`.
It needs no root and declares no privileged management permissions: the bridge
authenticates its signer and system-app status before accepting scoped operations.
The original NexAlloy APK is installed separately by the user.

## Release build

Set `HMA_KEYSTORE_PATH`, `HMA_KEYSTORE_PASSWORD`, `HMA_KEY_ALIAS`, and `HMA_KEY_PASSWORD`, then run:

```powershell
.\gradlew.bat clean :app:assembleRelease --no-daemon
```

Framework diagnostics use `NTNexAlloy` and `NTOriginalModule`.
