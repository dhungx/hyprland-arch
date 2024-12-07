# Đóng góp vào Tiêu chuẩn Cộng đồng

Cảm ơn bạn đã quan tâm đến việc đóng góp vào Tiêu chuẩn Cộng đồng! Chúng tôi hoan nghênh mọi đóng góp, bao gồm sửa lỗi, cải tiến tính năng, cập nhật tài liệu, và các cải tiến chung khác.

## Bắt đầu

1. **Fork repository này** vào tài khoản GitHub của bạn. Thao tác này sẽ tạo một bản sao của repository trong tài khoản của bạn. Bạn có thể thực hiện thay đổi trên bản sao này mà không ảnh hưởng đến repository gốc.  
   - Để fork repository này, nhấp vào nút **Fork** ở góc trên bên phải của trang hoặc nhấp [vào đây](https://github.com/dhungx/hyprland-arch/fork).

2. **Clone repository đã fork về máy của bạn.**  
   - Sử dụng lệnh sau để clone repository đã fork về máy của bạn:

     ```bash
     git clone https://github.com/dhungx/hyprland-arch.git
     ```

3. **Tạo một nhánh mới để thực hiện thay đổi.**  
   - Ví dụ: Để tạo một nhánh mới có tên là `your-branch-name`, sử dụng lệnh sau:

     ```bash
     git checkout -b your-branch-name
     ```

4. **Thực hiện thay đổi và commit với thông điệp mô tả.**  
   - Ví dụ: Để commit thay đổi, sử dụng lệnh sau và nhớ tuân theo [hướng dẫn viết commit message](https://github.com/dhungx/hyprland-arch/blob/main/COMMIT_MESSAGE_GUIDELINES.md).

     ```bash
     git commit -m "feat: add a new feature"
     ```

5. **Đẩy thay đổi của bạn lên repository đã fork.**  
   - Ví dụ: Để đẩy thay đổi lên repository đã fork, sử dụng lệnh sau:

     ```bash
     git push origin your-branch-name
     ```

6. **Gửi pull request** đến repository gốc.  
   - Ví dụ: Để tạo một pull request, thực hiện các bước sau:
     1. Truy cập vào repository đã fork của bạn.
     2. Nhấp vào nút **Compare & pull request** bên cạnh nhánh `your-branch-name`.
     3. Thêm tiêu đề và mô tả cho pull request của bạn.
     4. Nhấp vào **Create pull request** và nhớ thêm các nhãn phù hợp bằng cách sử dụng [mẫu pull request](https://github.com/dhungx/hyprland-arch/blob/templates/.github/PULL_REQUEST_TEMPLATE.md).

---

## Hướng dẫn

- Tuân thủ phong cách mã hóa của dự án.
- Cập nhật **tài liệu** nếu cần.
- Thêm bài kiểm thử nếu áp dụng.
- Đảm bảo tất cả các bài kiểm thử đều chạy thành công trước khi gửi thay đổi.
- Giữ pull request tập trung vào mục tiêu và tránh đưa vào các thay đổi không liên quan.
- Tuân theo các tệp hướng dẫn trước khi gửi thay đổi:
  - [bug_report.md](https://github.com/dhungx/hyprland-arch/blob/main/.github/ISSUE_TEMPLATE/bug_report.md): Sử dụng mẫu này để báo cáo lỗi.
  - [feature_request.md](https://github.com/dhungx/hyprland-arch/blob/main/.github/ISSUE_TEMPLATE/feature_request.md): Sử dụng mẫu này để đề xuất tính năng.
  - [documentation_update.md](https://github.com/dhungx/hyprland-arch/blob/main/.github/ISSUE_TEMPLATE/documentation_update.md): Sử dụng mẫu này để đề xuất thay đổi tài liệu.
  - [custom.md](https://github.com/dhungx/hyprland-arch/blob/main/.github/ISSUE_TEMPLATE/custom.md): Sử dụng mẫu này để gửi vấn đề tuỳ chỉnh.
  - [PULL_REQUEST_TEMPLATE.md](https://github.com/dhungx/hyprland-arch/blob/main/.github/PULL_REQUEST_TEMPLATE.md): Sử dụng mẫu này để gửi pull request.
  - [COMMIT_MESSAGE_GUIDELINES.md](https://github.com/dhungx/hyprland-arch/blob/main/COMMIT_MESSAGE_GUIDELINES.md): Đọc tệp này để hiểu về cách viết commit message.
  - [CONTRIBUTING.md](https://github.com/dhungx/hyprland-arch/blob/main/CONTRIBUTING.md): Đọc tệp này để hiểu các hướng dẫn đóng góp.
  - [LICENSE](https://github.com/dhungx/hyprland-arch/blob/main/LICENSE): Đọc tệp này để hiểu giấy phép của dự án.
  - [README.md](https://github.com/dhungx/hyprland-arch/blob/main/README.md): Đọc tệp này để hiểu về dự án.

---

## Liên hệ

Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ qua [GitHub Discussions](https://github.com/dhungx/hyprland-arch/discussions).
