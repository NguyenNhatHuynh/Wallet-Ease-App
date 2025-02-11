# Ứng Dụng WalletEase 💰

Ứng dụng **WalletEase** giúp người dùng quản lý tài chính cá nhân một cách thông minh và hiệu quả. WalletEase cho phép theo dõi thu nhập, chi tiêu, lập ngân sách và phân tích tình hình tài chính thông qua biểu đồ trực quan.

## 🎯 Mục Tiêu

- Theo dõi thu nhập và chi tiêu hàng ngày.
- Lập ngân sách cho các danh mục chi tiêu khác nhau.
- Cung cấp báo cáo tài chính chi tiết theo thời gian.
- Hỗ trợ chế độ sáng/tối giúp trải nghiệm thân thiện hơn.
- Dữ liệu được lưu trữ an toàn với mã hóa.

## 🛠️ Các Tính Năng Chính

- **Quản lý thu nhập & chi tiêu 📊**: Dễ dàng thêm, sửa, xóa giao dịch.
- **Lập ngân sách 💵**: Thiết lập giới hạn chi tiêu cho từng danh mục.
- **Biểu đồ phân tích 📈**: Hiển thị tổng quan tài chính bằng biểu đồ.
- **Nhắc nhở thanh toán ⏰**: Cảnh báo về các khoản thanh toán sắp đến hạn.
- **Chế độ sáng/tối 🌞🌜**: Hỗ trợ chuyển đổi giao diện tối ưu.
- **Đồng bộ dữ liệu ☁️**: Lưu trữ và đồng bộ hóa dữ liệu an toàn.
- **Hồ sơ cá nhân**: Có thể chỉnh sửa "Tên người dùng, Ảnh đại diện, Tùy chỉnh hồ sơ, Xem thông tin chi tiết"


## 📁 Cấu Trúc Dự Án

Dự án sử dụng **Flutter** để phát triển ứng dụng di động với cấu trúc rõ ràng và dễ quản lý:

```
WalletEase/
lib/
├── controllers/           // Logic controllers for the app
│   ├── allowance controllers/
│   │   ├── new_allowance.dart
│   │   └── update_allowance.dart
│   ├── data controller/
│   │   ├── delete_item.dart
│   │   └── search_bar.dart
│   ├── expense controllers/
│   │   ├── new_expense.dart
│   │   └── update_expense.dart
│   └── user controller/
│       ├── changed_profile.dart
│       └── username_form.dart
├── database/              // Database services
│   ├── database_service.dart
│   └── finance_db.dart
├── models/                // Data models
│   ├── category model/
│   │   ├── categories.dart
│   │   └── category.dart
│   ├── item model/
│   │   ├── allowance_item.dart
│   │   └── expense_item.dart
│   └── user model/
│       ├── profile_pictures_list.dart
│       └── user.dart
├── styles/                // Styling definitions
│   ├── buttons.dart
│   └── text_style.dart
├── views/                 // UI components and screens
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── search_screen.dart
│   │   ├── settings.dart
│   │   └── stats_screen.dart
│   ├── users/
│   │   ├── main_screen.dart
│   │   └── user_screen.dart
│   └── widgets/
│       ├── allowance widgets/
│       │   └── allowance_list.dart
│       ├── data widgets/
│       │   ├── empty_list.dart
│       │   └── insufficient_allowance.dart
│       ├── expenses widgets/
│       │   └── expenses_list.dart
│       ├── search widgets/
│       │   ├── date_sorting.dart
│       │   ├── empty_data.dart
│       │   └── recent_data.dart
│       ├── settings widgets/
│       │   ├── about_app.dart
│       │   ├── currency_dropdown.dart
│       │   └── help.dart
│       ├── stats widgets/
│       │   ├── pie_graph.dart
│       │   └── total_data.dart
│       └── user widgets/
│           ├── profile_picture.dart
│           ├── user_allowance.dart
│           └── username.dart
└── main.dart
```

## ⚙️ Công Nghệ Sử Dụng

- **Flutter**: Framework phát triển ứng dụng di động.
- **Dart**: Ngôn ngữ lập trình chính.
- **Provider**: Quản lý trạng thái của ứng dụng.
- **Hive Database**: Lưu trữ dữ liệu cục bộ nhanh chóng.
- **Firebase**: Đăng nhập và đồng bộ dữ liệu trên nhiều thiết bị.
- **Shared Preferences**: Lưu trữ các cài đặt của người dùng.

## 🎥 Link Video Demo

[Link Video Youtube](#)

## 📸 Screenshots

(Thêm ảnh chụp màn hình tại đây)

## 🛠️ Hướng Dẫn Cài Đặt

### Điều Kiện

Cần cài đặt các phần mềm sau:

- **Flutter SDK**: [Cài đặt Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (đi kèm với Flutter)
- **Android Studio / Visual Studio Code**

### Cài Đặt Dự Án

Clone dự án về máy:

```sh
git clone https://github.com/NguyenNhatHuynh/Wallet-Ease-App.git
```

Chuyển đến thư mục dự án:

```sh
cd WalletEase
```

Cài đặt các dependencies:

```sh
flutter pub get
```

Chạy ứng dụng:

```sh
flutter run
```

## ✅ Todo
- [x] Quản lý thu nhập & chi tiêu 📊**: Dễ dàng thêm, sửa, xóa giao dịch.
- [x] Lập ngân sách 💵: Thiết lập giới hạn chi tiêu cho từng danh mục.
- [x] Biểu đồ phân tích 📈: Hiển thị tổng quan tài chính bằng biểu đồ.
- [ ] Nhắc nhở thanh toán ⏰: Cảnh báo về các khoản thanh toán sắp đến hạn.
- [ ] Chế độ sáng/tối 🌞🌜: Hỗ trợ chuyển đổi giao diện tối ưu.
- [x] Đồng bộ dữ liệu ☁️: Lưu trữ và đồng bộ hóa dữ liệu an toàn.
- [x] Hồ sơ cá nhân: Có thể chỉnh sửa "Tên người dùng, Ảnh đại diện, Tùy chỉnh hồ sơ, Xem thông tin chi tiết"
## 👨‍💻 Tác Giả

Nếu bạn thích dự án này, hãy để lại một ngôi sao 🌟 trên GitHub để ủng hộ! Cảm ơn vì sự hỗ trợ của bạn.

Tác giả: [Xoan Dev] 👨‍💻

- [ ] **Status Project:** In Progress
