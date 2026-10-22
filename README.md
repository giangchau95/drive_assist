# Drive Assist — Stats-only (OTA)

Bản Drive Assist rút gọn, chỉ giữ:
- **Daily Statistics & Altimetry feed**
- **Charging history & energy balance**

Đơn vị tiền: **VND**. Giao diện tiếng Anh. Có cập nhật OTA qua repo này.

## Cài lần đầu (chỉ làm 1 lần)
1. Chép `install/drive_assist_installer.apk` vào xe và cài/chạy (hoặc `adb install install/drive_assist_installer.apk`).
   Installer sẽ cài ModeHelper-lite (bộ cài đặt im lặng) + Drive Assist rồi tự gỡ chính nó.
2. Mở Drive Assist → nút mũi tên xuống ở cuối thanh bên trái → **Check for updates**.

> Repo phải ở chế độ **Public** và nhánh mặc định là `main` (app đọc
> `https://raw.githubusercontent.com/giangchau95/drive_assist/main/update/version.json`).

## Phát hành bản cập nhật
```bash
tools/release.sh "Nội dung thay đổi"
git add -A && git commit -m "release" && git push
```
Script tự tăng `versionCode`, build, ký bằng `keystore/debug.ks` (**luôn dùng đúng key này**, đổi key sẽ không cài đè được),
cập nhật `update/drive_assist.apk` và `update/version.json`.

Trên xe: mở app → nút **Update** (mũi tên xuống) → *Check for updates* → *Update now*.
App cũng tự kiểm tra tối đa 6 giờ/lần khi xe ở số P và hiện hộp thoại nếu có bản mới.

## An toàn
- Chỉ cài khi xe ở **P** và **không đang sạc** (cập nhật làm tiến trình app khởi động lại).
- ModeHelper kiểm tra: HTTPS, đúng package `com.geely.drivemem`, đúng chữ ký với bản đang cài.

## Cấu trúc
- `update/` — `version.json` + `drive_assist.apk` (app đọc từ đây)
- `install/` — installer lần đầu + ModeHelper-lite
- `src/` — project apktool (smali + res) của app, build bằng `tools/release.sh`
- `java-src/` — mã Java của các lớp đã viết lại (tham khảo)
- `keystore/debug.ks` — khóa ký (alias `d`, mật khẩu `android`)
