# Hướng dẫn nhúng NexAlloy vào ROM theo NTFramework

Tài liệu dành cho người build ROM, đối chiếu mã nguồn ngày 08/11/2026 tại
NTFramework commit `724a787b336e3896290dc2637f5f16f0b91d8604`.
Ví dụ lệnh dùng Bash trên Linux/WSL, chạy từ thư mục chứa các repo.

## 1. Thành phần được đưa vào ROM

ROM chứa bộ nạp, engine hook, bridge cấu hình và NexAlloy Manager. Người dùng
cài APK NexAlloy-XES của tác giả từ trang release, sau đó bật phạm vi ứng dụng
trong Manager. Cơ chế này sử dụng mã và thư viện của module đã cài.

| Thành phần | Nguồn chính | Vị trí sau khi đóng ROM |
| --- | --- | --- |
| Bộ nạp `NexAlloyRuntime` | `src/android/security/ntmanager/NexAlloyRuntime.java` | Lớp `android.security.ntmanager.NexAlloyRuntime` trong DEX của `framework.jar` |
| Engine và Xposed shim | `engine-src/`, `payload/ntmanager/NTXposedEngine.dex` | Entry `ntmanager/NTXposedEngine.dex` bên trong `framework.jar` |
| Bridge và dịch vụ cấu hình | `modern-src/`, `shared-src/` | Entry `ntmanager/NTModernBridge.dex` bên trong `framework.jar` |
| Thư viện native | `payload/ntmanager/<ABI>/` | Các entry `ntmanager/<ABI>/*.so` bên trong `framework.jar` |
| NexAlloy Manager | `controller-app/`, `app/NexAlloyManager.apk` | `/system_ext/app/NexAlloyManager/NexAlloyManager.apk` |
| Module NexAlloy-XES | APK release do người dùng cài | APK thuộc gói `io.github.chsbuffer.revancedxposed` trong `/data/app` |

Các đường dẫn nguồn trong bảng tính từ `NTFramework/nexalloy-rom/`.
`NTXposedEngine.dex` và `NTModernBridge.dex` là tài nguyên được bộ nạp đọc từ JAR.
Phải giữ nguyên tên thư mục `ntmanager/` khi đóng lại JAR.

Thiết kế hiện tại cần **Android 14 trở lên, API 34+**, với payload native cho
`arm64-v8a` và `armeabi-v7a`. Chọn SDK theo framework của ROM đang build.
Ví dụ Android 17 dùng API 37 dù vendor của thiết bị có thể cũ hơn.

## 2. Luồng hoạt động

```text
Instrumentation tạo Application
  → NTHooks.initContext(context)
  → NexAlloyRuntime.init(context)
  → hỏi SettingsProvider về module và scope đang bật
  → kiểm tra APK module và chứng thư ký
  → lấy engine/bridge/native vào code_cache của ứng dụng đích
  → tạo ClassLoader và gọi ModuleHost.attach(...)
  → gọi entry point libxposed của NexAlloy-XES
```

Điểm IPC đi qua `ContentProvider$Transport.call(...)`, sau bước kiểm tra authority.
Bộ nạp chỉ xử lý giao thức `nt.nexalloy.*` tại authority `settings`, bên trong
SettingsProvider thật mang UID hệ thống. Bridge lưu công tắc, scope và preferences
trong device-protected storage của SettingsProvider.

Runtime chỉ nạp engine native trong ứng dụng đã bật và thuộc scope do module công
bố. Mã hiện tại chỉ attach vào tiến trình chính có tên bằng package, với appId từ
10000 trở lên. Giao diện APK module được kết nối Binder cấu hình riêng.

Công tắc tổng mặc định tắt. Lần đầu, tập ứng dụng được chọn lấy từ scope của module.
Danh sách được đọc từ `META-INF/xposed/scope.list`; sau cập nhật module, tập đã
chọn được giao với scope mới. Manager cung cấp Mở, Thông tin ứng dụng, Buộc dừng,
Tối ưu lại và nút mở giao diện cấu hình của module.

Luồng ROM sử dụng bộ nạp trong tiến trình ứng dụng, vận hành bằng quyền sẵn có
của Android và SettingsProvider. Người dùng sử dụng Manager qua IPC đã xác thực.

## 3. Chuẩn bị nguồn và kiểm tra payload

Các repo sử dụng trong workspace hiện tại gồm `NTFramework`,
`nothingsvn_oplus-pt.toolbuild` và `nothingsvn_xiaomi-toolbuild`. Mỗi toolbuild giữ
phần điều phối riêng của hãng. Bật `install_toolbox=true` trong cấu hình build
để chạy nhánh NTManager có tích hợp NexAlloy.

Kiểm tra payload có sẵn trước khi tích hợp.

```bash
set -euo pipefail

(cd NTFramework/nexalloy-rom/payload && sha256sum -c SHA256SUMS)
(cd NTFramework/nexalloy-rom/app && sha256sum -c SHA256SUMS)

python3 NTFramework/nexalloy-rom/test_integration.py -v
python3 NTFramework/nexalloy-rom/test_art_optimizer.py -v
```

Máy build cần Python 3, Java/Javac cho các phép thử Java, và bộ baksmali/smali
đang dùng của toolbuild. PT dùng `baksmali2.jar`/`smali2.jar`; Xiaomi dùng
`baksmaliv2.jar`/`smaliv2.jar`. Dùng `--api` đúng SDK khi ráp DEX.

## 4. Tích hợp bằng toolbuild hiện có

Nguồn framework phục vụ NTManager được sửa tại NTFramework. Sau khi sửa script,
xuất sang repo cần build rồi chạy kiểm tra.

```bash
# PT
python3 NTFramework/tools/export_toolbuild.py \
  --profile pt --target nothingsvn_oplus-pt.toolbuild
python3 NTFramework/tools/export_toolbuild.py \
  --profile pt --target nothingsvn_oplus-pt.toolbuild --check

# Xiaomi
python3 NTFramework/tools/export_toolbuild.py \
  --profile xiaomi --target nothingsvn_xiaomi-toolbuild
python3 NTFramework/tools/export_toolbuild.py \
  --profile xiaomi --target nothingsvn_xiaomi-toolbuild --check
```

Script export chỉ ghi các file được ánh xạ trong
`NTFramework/toolbuild-integration/exports.json` và receipt
`NTFRAMEWORK-PAYLOAD.json`. APK Manager, runtime smali và payload DEX/native của
NexAlloy cần được cập nhật riêng nếu đã rebuild chúng. Kiểm tra checksum của
payload riêng cùng với `--check` của script export.

| Profile | Thư mục triển khai NexAlloy trong toolbuild |
| --- | --- |
| PT | `bin/package/FrameworkPatcher/NTManager/nexalloy-rom/` |
| Xiaomi | `bin/package/NTManager/nexalloy-rom/` |

Khi đã build bộ bridge/runtime mới và kiểm tra thành công, sao chép các sản phẩm
theo đúng thư mục triển khai của profile. Ví dụ với PT, chạy từ thư mục chứa repo.

```bash
src=NTFramework/nexalloy-rom
dst=nothingsvn_oplus-pt.toolbuild/bin/package/FrameworkPatcher/NTManager/nexalloy-rom

cp -a "$src/smali/." "$dst/smali/"
cp -a "$src/payload/." "$dst/payload/"
cp "$src/app/NexAlloyManager.apk" "$src/app/SHA256SUMS" "$dst/app/"

(cd "$dst/payload" && sha256sum -c SHA256SUMS)
(cd "$dst/app" && sha256sum -c SHA256SUMS)
```

Đổi `dst` theo bảng để cập nhật Xiaomi. Rà lại danh sách file khi sản phẩm build
đổi cấu trúc, vì lệnh `cp` có thể để lại file cũ. Với payload có sẵn và cùng
checksum, tiếp tục luồng build thông thường của repo.

`patcher.sh` thực hiện các bước sau trong lúc xử lý `framework.jar`.

1. Giải mã framework của chính ROM đầu vào.
2. Chạy patch NTManager, đưa core smali vào DEX riêng và chuẩn bị `NTHooks`.
3. Gọi `nexalloy-rom/install.py --framework-tree ... --sdk ...` trước khi ráp lại.
4. Ráp và đóng lại framework với payload `ntmanager/`.
5. `update.sh` gọi `nexalloy-rom/install.py <images>` để cài Manager và cập nhật metadata.

## 5. Tích hợp vào một cây ROM hoặc kitchen khác

Cây framework đầu vào phải có đúng một lớp `NTHooks` và một lớp
`ContentProvider$Transport`. Cần có lời gọi `NTHooks.initContext(context)` ở luồng
tạo Application của `Instrumentation`. Chỉ sao chép lớp runtime vào framework
chưa tạo được điểm nạp này.

Kiểm tra cây đã giải mã, ví dụ với ripgrep.

```bash
rg --files /work/framework.jar.out | grep -E 'NTHooks.smali|ContentProvider\$Transport.smali'
rg -n 'NTHooks;->initContext' /work/framework.jar.out
```

Sau khi đã chuẩn bị core hook NTManager theo `toolbox.py` của đúng profile,
chạy lệnh sau. Thay API 37 bằng SDK thực tế của ROM.

```bash
python3 NTFramework/nexalloy-rom/install.py \
  --framework-tree /work/framework.jar.out --sdk 37
```

Bộ cài kiểm tra checksum payload, vá transport, chèn lời gọi runtime vào
`NTHooks.initContext`, rồi chép runtime smali vào DEX chứa `NTHooks` và payload
vào gốc cây JAR. Khi ráp, cần đưa cả `classes*.dex` và thư mục `ntmanager/` vào JAR.

Nếu đang có `framework.jar` đã tích hợp NTManager, có thể dùng công cụ vá JAR
để tạo đầu ra riêng. Thư mục work phải mới và baksmali/smali phải đúng cặp.

```bash
python3 NTFramework/nexalloy-rom/patch-jar.py /rom/framework.jar \
  --work /work/nexalloy-framework-a17 \
  --baksmali nothingsvn_oplus-pt.toolbuild/bin/apktool/baksmali2.jar \
  --smali nothingsvn_oplus-pt.toolbuild/bin/apktool/smali2.jar \
  --api 37
```

Đầu ra nằm ở `/work/nexalloy-framework-a17/framework.jar`, kèm `report.json`
ghi hash và các DEX đã tác động. Công cụ kiểm tra danh sách lớp và nội dung những
ZIP entry còn lại. Đưa JAR đầu ra vào cây system tương ứng của chính ROM đó.

Tiếp theo cài Manager vào cây phân vùng đã giải nén.

```bash
python3 NTFramework/nexalloy-rom/install.py /work/images --sdk 37
```

Cây này cần có `system_ext/`. Bộ cài ghi APK vào `system_ext/app/NexAlloyManager`,
mode thư mục `0755`, file `0644`, chủ sở hữu `root:root` và nhãn `system_file`.
Metadata packer được cập nhật ở các thư mục config được script nhận diện. Với
kitchen khác, đối chiếu vị trí `fs_config`/`file_contexts` mà packer thực sự đọc.

Bước chuyển đổi còn dọn các đường dẫn Vector do bộ tích hợp cũ quản lý. Nếu có
khối policy `NTVector`, script loại khối đó và tính lại hash với mapping của vendor.
Với cây thiếu vendor metadata, truyền `--vendor-policy-version` đúng phiên bản
đọc từ `vendor/etc/selinux/plat_sepolicy_vers.txt` của thiết bị. Ví dụ khi file đó
ghi `34.0`, thêm `--vendor-policy-version 34.0` vào lệnh cài Manager.

Đóng `system` chứa framework mới và `system_ext` chứa Manager theo packer của ROM.
Rà các ART/preopt artifact gắn với framework cũ theo pipeline của hãng để Android
nạp DEX mới. Lưu bản sao ảnh đang boot tốt để khôi phục trong quá trình thử nghiệm.

## 6. Ký Manager và rebuild bridge/runtime

Bridge xác thực cả package và chứng thư. Các giá trị của bản hiện tại gồm

| Đối tượng | Giá trị |
| --- | --- |
| Module | `io.github.chsbuffer.revancedxposed` |
| SHA-256 chứng thư module | `41b88671a623ad293d06fb1e3e396aaf22cafba8948e3cdec028dc95f2f8e8ba` |
| Manager | `com.hma.nexalloy` |
| SHA-256 chứng thư Manager | `9f9c6da451bfbf5fa9633eb852e62438f751cf4dd34a85b814a50d711ff9fcfe` |
| API bridge | `102`; kiểm tra metadata module trong `BridgeContract.java` |

Hash chứng thư và hash file APK là hai giá trị riêng. `app/SHA256SUMS` ghi hash file
APK. `NexAlloyService.enforceManager()` kiểm tra hash chứng thư, trạng thái system
app và UID của bên gọi.

Nếu tự ký bằng khóa khác, cập nhật pin Manager trong
`modern-src/com/nothingsvn/nexalloy/NexAlloyService.java`, rebuild bridge/runtime
và đóng cùng APK Manager đã ký bằng khóa đó.

Build Manager từ `NTFramework/nexalloy-rom/controller-app/` với bốn biến môi trường
`HMA_KEYSTORE_PATH`, `HMA_KEYSTORE_PASSWORD`, `HMA_KEY_ALIAS`, `HMA_KEY_PASSWORD`
đã đặt theo khóa phát hành của người build.

```bash
./gradlew :app:assembleRelease --no-daemon
```

Kiểm tra chứng thư của APK đầu ra bằng `apksigner verify --print-certs`, đưa bản
release đã ký vào `nexalloy-rom/app/NexAlloyManager.apk`, rồi tính lại manifest.

```bash
(cd NTFramework/nexalloy-rom/app && sha256sum NexAlloyManager.apk > SHA256SUMS)
```

Để build bridge/runtime từ nguồn, chuẩn bị `android.jar`, `d8.jar`, JDK có Javac
17+ và JAR API/interface libxposed 102.0.0, sau đó chạy

```bash
python3 NTFramework/nexalloy-rom/build.py \
  --android-jar /sdk/platforms/android-37/android.jar \
  --d8-jar /sdk/build-tools/36.0.0/lib/d8.jar \
  --api-jar /deps/libxposed-api-102.jar \
  --interface-jar /deps/libxposed-interface-102.jar \
  --baksmali-jar nothingsvn_oplus-pt.toolbuild/bin/apktool/baksmali2.jar
```

Đường dẫn SDK/API JAR trong lệnh là ví dụ, cần thay bằng file thật. `build.py`
tạo `NTModernBridge.dex`, cập nhật `BRIDGE_DIGEST`, sinh runtime smali và tính lại
`payload/SHA256SUMS`. Script còn sao chép Java runtime sang cây nguồn app của
NTFramework. Kiểm tra diff sau build để xác nhận các sản phẩm đi cùng nhau.

Engine `NTXposedEngine.dex` và native libraries là payload đã pin riêng.
`build.py` phía trên build bridge/runtime và sử dụng engine/native hiện có.
Khi tự thay engine/native, đối chiếu `engine-src/`, `compat/native/`,
`metadata/release.properties`, các digest trong runtime và manifest payload.
Các lớp `compile-stubs/` chỉ phục vụ biên dịch bridge.

## 7. Kiểm tra sau khi flash

1. Mở NexAlloy Manager từ launcher. Khi thiếu module, dùng liên kết release
   trong Manager để tải và cài APK NexAlloy-XES đúng chữ ký.
2. Bật công tắc tổng, chọn một app nằm trong scope rồi mở app đó.
3. Mở nút NexAlloy ở góc dưới phải để cấu hình tính năng cho app.
4. Sau khi thay cấu hình, buộc dừng/mở lại app. Dùng Tối ưu lại nếu mã AOT cũ làm
   hook chưa có tác dụng. Thao tác này yêu cầu ART biên dịch ở mức `verify`.
5. Thử tắt scope và công tắc tổng, mở lại app, rồi reboot để kiểm tra cấu hình.

Các lệnh ADB đọc trạng thái cơ bản gồm

```bash
adb shell getprop ro.build.version.sdk
adb shell getenforce
adb shell pm path com.hma.nexalloy
adb shell pm path io.github.chsbuffer.revancedxposed
adb shell am start -n com.hma.nexalloy/.MainActivity
adb logcat -d -s NTNexAlloy NTOriginalModule AndroidRuntime
```

Log thành công thường có `Original APK connected to ROM service` khi mở APK
module, `ORIGINAL APK attached version=...` và `Original APK active engine records=...`
khi app đích nạp hook. Số hook phụ thuộc app, phiên bản app và lựa chọn module.
Runtime còn ghi `ntnexalloy.log` vào external files của app khi ghi được; báo cáo
`nt-original-hooks.txt` nằm trong dữ liệu riêng của app đích.

| Triệu chứng | Điểm cần đối chiếu |
| --- | --- |
| Manager không mở được dịch vụ | Transport, authority `settings`, payload bridge và checksum, điểm nạp `NTHooks` |
| `Only the signed ROM manager is authorized` | APK đã cài trong system image, UID và pin chứng thư Manager |
| `Original NexAlloy unavailable` hoặc `Untrusted NexAlloy...` | Package module, chữ ký, signing lineage và metadata API |
| Danh sách app khác bản cũ | Scope trong APK module đang cài và giao với tập đã chọn |
| Có Manager nhưng app không có hook | Công tắc tổng, scope, tiến trình chính, ABI, log attach, phiên bản app/module và ART |
| `NexAlloy checksum mismatch` | Payload trong JAR phải khớp digest runtime của cùng lần build |
| `Expected exactly one provider transport and NTHooks` | Cây giải mã thiếu core hook hoặc có lớp trùng giữa các DEX |

Runtime hiện có các giới hạn về API hook, chẳng hạn
`ModuleHost.hookClassInitializer()` báo chưa hỗ trợ. Tích hợp module ở phiên bản
mới cần kiểm tra lại API và hành vi trên app đích.

## 8. Giấy phép và phạm vi xác nhận

Giữ `LICENSE`, `NOTICE.md`, license libxposed và các manifest checksum đi kèm bản
phân phối. Thông tin tác giả và nguồn từng thành phần nằm trong `NOTICE.md`.

Bản triển khai đã có thử nghiệm thiết bị Android 17 với module 2.0.111,
scope/công tắc tổng và thao tác ART. Android 14–16 có kiểm tra host/build được
ghi trong README. Các ROM và module mới cần có phép thử boot và hook riêng.

Nguồn tham chiếu của hướng dẫn nằm tại
[NTFramework/nexalloy-rom](https://github.com/tiencv2006/NTFramework/tree/724a787b336e3896290dc2637f5f16f0b91d8604/nexalloy-rom),
[profile PT](https://github.com/tiencv2006/NTFramework/blob/724a787b336e3896290dc2637f5f16f0b91d8604/toolbuild-integration/pt/patcher.sh),
[profile Xiaomi](https://github.com/tiencv2006/NTFramework/blob/724a787b336e3896290dc2637f5f16f0b91d8604/toolbuild-integration/xiaomi/patcher.sh),
[bảng export](https://github.com/tiencv2006/NTFramework/blob/724a787b336e3896290dc2637f5f16f0b91d8604/toolbuild-integration/exports.json) và [NOTICE](NOTICE.md).
APK module được phát hành tại
[NexAlloy-XES Releases](https://github.com/gnadgnaoh/NexAlloy-XES/releases/).
