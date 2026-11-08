# NTSEXAlloy

Bộ nguồn nhúng NexAlloy-XES vào ROM Android 14 trở lên, kèm NexAlloy Manager.
Repo được đổi tên từ NTVector-Runtime, giữ lịch sử Git và giấy phép GPL-3.0.
Cây hiện tại dùng bộ nạp trực tiếp trong ứng dụng, không dùng Vector, Zygisk,
daemon init hay module root để khởi động.

## Nguồn và phạm vi

Mã nguồn chính của framework, bridge và dịch vụ ROM nằm ở
[NTFramework](https://github.com/tiencv2006/NTFramework). Đây là bản phân phối
bộ nhúng hiện tại từ `nexalloy-rom`, không phải một nhánh phát triển framework
độc lập. [SOURCE.json](SOURCE.json) ghi commit nguồn và checksum từng file.
PT/Xiaomi toolbuild tiếp tục dùng luồng xuất từ NTFramework, chưa đổi sang tải
payload tự động từ repo này.

- `nexalloy-rom/src`, `shared-src`, `modern-src`: runtime và bridge Java.
- `nexalloy-rom/engine-src`, `compat`: shim và bản vá tương thích native.
- `nexalloy-rom/controller-app`: mã nguồn NexAlloy Manager.
- `nexalloy-rom/payload`, `deps`, `app`: payload, dependency và Manager đã build,
  kèm checksum và giấy phép.
- `nexalloy-rom/install.py`, `patch-jar.py`, `remove-vector.py`: tích hợp framework,
  đóng Manager và chuyển khỏi bộ Vector cũ.
- `app/src/main/java/utils/ntmanager/NexAlloyRuntime.java`: bản mirror của runtime
  do `build.py` cập nhật, không phải một project Android app riêng.

ROM chứa runtime trong `system/framework/framework.jar`, Manager ở
`system_ext/app/NexAlloyManager`. Module NexAlloy-XES **không cài sẵn**;
Manager hướng người dùng tới [release của tác giả](https://github.com/gnadgnaoh/NexAlloy-XES/releases/).
Công tắc chính mặc định tắt. Danh sách app lấy từ scope của module đã xác minh
chữ ký, bộ nạp chỉ chạy trong app thuộc scope đang bật.

## Hướng dẫn nhúng

Xem [hướng dẫn tiếng Việt](nexalloy-rom/HUONG_DAN_NHUNG_NEXALLOY.md) và
[hợp đồng tích hợp](nexalloy-rom/README.md). Cần framework đã có NTHooks của
NTManager trước khi chạy installer, không chép payload vào framework stock
rồi mặc định coi là đã tích hợp.

Ví dụ từ thư mục gốc repo, với cây framework đã giải mã và cây phân vùng:

```sh
python3 nexalloy-rom/install.py --framework-tree /work/framework.jar.out --sdk 37
python3 nexalloy-rom/install.py /work/images --sdk 37
```

Giữ riêng điều phối PT và Xiaomi trong NTFramework. Repack/flash cần metadata
và phân vùng đúng thiết bị, không lấy ảnh của máy khác.

## Build và kiểm tra

Cần Python 3, JDK, Android SDK, D8, baksmali. Build Manager cần SDK/Gradle theo
cấu hình trong `controller-app`. JAR libxposed API/interface 102.0.0 được lưu
trong `deps`, kèm checksum và giấy phép.

Từ thư mục gốc repo:

```sh
python3 nexalloy-rom/build.py --android-jar /sdk/platforms/android-37/android.jar --d8-jar /sdk/build-tools/37.0.0/lib/d8.jar --api-jar nexalloy-rom/deps/api.jar --interface-jar nexalloy-rom/deps/interface.jar --baksmali-jar /tools/baksmali.jar
python3 nexalloy-rom/test_integration.py -v
python3 nexalloy-rom/test_art_optimizer.py -v
cd nexalloy-rom/payload
sha256sum -c SHA256SUMS
cd ../app
sha256sum -c SHA256SUMS
```

`build.py` build lại bridge/runtime và smali, không tự build lại toàn bộ native
engine. Nguồn shim, bản vá native và revision upstream nằm trong `engine-src`,
`compat`, `metadata` và NOTICE.

Build Manager release bằng khóa riêng của ROM:

```sh
cd nexalloy-rom/controller-app
export HMA_KEYSTORE_PATH=/private/manager.jks
export HMA_KEYSTORE_PASSWORD='your-password'
export HMA_KEY_ALIAS='your-alias'
export HMA_KEY_PASSWORD='your-password'
./gradlew :app:assembleRelease --no-daemon
```

Repo không chứa khóa ký. Chữ ký Manager phải khớp pin được bridge tin cậy.
Đổi khóa cần cập nhật pin trong nguồn NTFramework, build và xuất lại payload.
Không bỏ kiểm tra chữ ký để dùng APK khác.

Android 17 có kết quả thử thiết bị trong tài liệu nguồn. Android 14–16 có kiểm
tra host/build, chưa có phép thử thiết bị mới cho bản snapshot này. Kiểm tra
host không thay cho kiểm tra boot và hook trên ROM đích.

## Giấy phép

[GPL-3.0](LICENSE), giữ [ghi công và thông tin thành phần](NOTICE.md).
Giấy phép libxposed, LSPlant/AliuHook và libc++ được giữ theo từng thành phần.
Module gốc do người dùng tải độc lập, không nằm trong repo này.
