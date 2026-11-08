# Attribution and notices

## Original NexAlloy project

- Project: [NexAlloy/NexAlloy](https://github.com/NexAlloy/NexAlloy)
- Original author and maintainer: **ChsBuffer**
  ([@chsbuffer](https://github.com/chsbuffer))
- License: GNU General Public License v3.0

NexAlloy is the upstream LSPosed module and patch implementation. No upstream source file is
claimed as original NothingsVN work.

## NexAlloy-XES fork

- Project: [gnadgnaoh/NexAlloy-XES](https://github.com/gnadgnaoh/NexAlloy-XES)
- Fork author and maintainer: **XES SEX**
  ([@gnadgnaoh](https://github.com/gnadgnaoh))
- Based on: `NexAlloy/NexAlloy`
- License: GNU General Public License v3.0

Contributors visible in the fork history at the time this integration was published:

- **XES SEX** (`@gnadgnaoh`)
- **ChsBuffer** (`@chsbuffer`)
- **Fioren** (`@FiorenMas`)
- **Moeta Yuko** (`@moetayuko`)

These names are included to preserve attribution. The complete and authoritative contribution
history remains in the upstream Git repositories.

## NothingsVN adapter

The framework loading adapter, ROM integration contract, and export tooling in this repository
were prepared by **NothingsVN contributors**, maintained at
[@tiencv2006](https://github.com/tiencv2006).

The adapter calls the upstream payload through its published runtime classes. It does not transfer
ownership of upstream patches, hook implementations, native libraries, branding, or trademarks.

## Third-party components used by the payload

The ROM embeds the pinned LSPlant/AliuHook/libc++ loader libraries and an API-only
Xposed shim from the previously tested integration. The shim's matching smali is in
`engine-src/`; native compatibility patches are in `compat/native/`. Upstream native
projects are https://github.com/LSPosed/LSPlant and https://github.com/Aliucord/Hook.
Their own licenses and notices apply. NexAlloy's application/patch code, DexKit,
Morphe and ReVanced are supplied by the user's independently installed original
module APK, not bundled into the ROM. Historical binary provenance is preserved in
[NTVector-Runtime commit fe8a6284e7139330e73f2818c015277ee70bae9b](https://github.com/ncd03-nb/NTVector-Runtime/tree/fe8a6284e7139330e73f2818c015277ee70bae9b).
SHA256 pins are in `payload/SHA256SUMS`.

## Original APK bridge

The original-only ROM bridge uses libxposed API and interface 102.0.0, licensed
under Apache License 2.0 by the libxposed contributors. Source projects:
https://github.com/libxposed/api and https://github.com/libxposed/service.
The full license is in `metadata/LICENSE-libxposed.txt` and is embedded with the
bridge by the toolbuilds. No changes are made to the signed upstream module APK.
