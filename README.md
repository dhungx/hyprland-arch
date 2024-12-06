###### *<div align="right"><sub>// thiết kế bởi t2</sub></div>*
<div align="center">
    <a href="https://discord.gg/AYbJ9MJez7">
    <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">
    </a>
</div>

<!--
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">

<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_presence_count&suffix=%20online&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">
-->

<div align="center">

![hyde_banner](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyde_banner.png)

<br>

  <a href="#installation"><kbd> <br> Cài đặt <br> </kbd></a>&ensp;&ensp;
  <a href="#themes"><kbd> <br> Chủ đề <br> </kbd></a>&ensp;&ensp;
  <a href="#styles"><kbd> <br> Kiểu dáng <br> </kbd></a>&ensp;&ensp;
  <a href="#keybindings"><kbd> <br> Phím tắt <br> </kbd></a>&ensp;&ensp;
  <a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd> <br> Youtube <br> </kbd></a>&ensp;&ensp;
  <a href="https://github.com/prasanthrangan/hyprdots/wiki"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
  <a href="https://discord.gg/qWehcFJxPa"><kbd> <br> Discord <br> </kbd></a>

</div><br><br>

https://github.com/prasanthrangan/hyprdots/assets/106020512/7f8fadc8-e293-4482-a851-e9c6464f5265

<br><div align="center"><img width="12%" src="Source/assets/Arch.svg"/><br></div>

<a id="installation"></a>  
<img src="Source/assets/Installation.gif" width="200"/>
---

Kịch bản cài đặt này được thiết kế cho một cài đặt [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) tối thiểu, nhưng **có thể** hoạt động trên một số [distro dựa trên Arch](https://wiki.archlinux.org/title/Arch-based_distributions).
Khi cài đặt HyDE cùng với một [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) khác, do đây là một thiết lập được tùy chỉnh mạnh, có thể **sẽ** xung đột với các chủ đề [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt), [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), v.v... và bạn sẽ phải tự chịu rủi ro.

Để hỗ trợ Nixos, có một dự án riêng biệt đang được duy trì tại [Hydenix](https://github.com/richen604/hydenix/tree/main).

> [!QUAN TRỌNG]
> Kịch bản cài đặt sẽ tự động phát hiện thẻ NVIDIA và cài đặt driver nvidia-dkms cho kernel của bạn.
> Hãy chắc chắn rằng thẻ NVIDIA của bạn hỗ trợ driver dkms trong danh sách có sẵn [tại đây](https://wiki.archlinux.org/title/NVIDIA).

> [!CẢNH BÁO]
> Kịch bản này sẽ thay đổi cấu hình `grub` hoặc `systemd-boot` của bạn để kích hoạt NVIDIA DRM.

Để cài đặt, hãy thực hiện các lệnh sau:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/prasanthrangan/hyprdots ~/HyDE
cd ~/HyDE/Scripts
./install.sh
```

> [!MẸO]
> Bạn cũng có thể thêm bất kỳ ứng dụng nào bạn muốn cài đặt cùng với HyDE vào tệp `Scripts/custom_apps.lst` và truyền tệp đó như một tham số để cài đặt:
>
> ```shell
> ./install.sh custom_apps.lst
> ```

Lựa chọn cài đặt thứ hai, bạn cũng có thể sử dụng `Hyde-install`, điều này có thể dễ dàng hơn cho một số người.
Xem hướng dẫn cài đặt cho HyDE trong [Hyde-cli - Cách sử dụng](https://github.com/kRHYME7/Hyde-cli?tab=readme-ov-file#usage).

Sau khi kịch bản cài đặt hoàn tất và bạn được chuyển đến màn hình đăng nhập SDDM (hoặc màn hình đen lần đầu tiên), hãy khởi động lại hệ thống.
Để biết thêm chi tiết, vui lòng tham khảo [hướng dẫn cài đặt trên wiki](https://github.com/prasanthrangan/hyprdots/wiki/Installation).

<a id="updating"></a>  
<img src="Source/assets/Updating.gif" width="200"/>
---

Để cập nhật HyDE, bạn sẽ cần kéo các thay đổi mới nhất từ GitHub và khôi phục lại cấu hình của mình bằng cách chạy các lệnh sau:

```shell
cd ~/HyDE/Scripts
git pull
./install.sh -r
```

> [!QUAN TRỌNG]
> Lưu ý rằng bất kỳ cấu hình nào bạn đã thực hiện sẽ bị ghi đè nếu có trong danh sách `Scripts/restore_cfg.lst`.
> Tuy nhiên, tất cả các cấu hình đã thay thế sẽ được sao lưu và có thể khôi phục từ thư mục `~/.config/cfg_backups`.

Lựa chọn cập nhật thứ hai, bạn có thể sử dụng `Hyde restore ...`, có cách tốt hơn để quản lý việc khôi phục và sao lưu.
Để biết thêm chi tiết, bạn có thể tham khảo [Hyde-cli - quản lý dots wiki](https://github.com/kRHYME7/Hyde-cli/wiki/Dots-Management).

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="themes"></a>  
<img src="Source/assets/Themes.gif" width="200"/>
---

Tất cả các chủ đề chính thức của chúng tôi được lưu trữ trong một kho lưu trữ riêng biệt, cho phép người dùng cài đặt chúng thông qua themepatcher.
Để biết thêm thông tin, hãy truy cập [HyDE-Project/hyde-themes](https://github.com/HyDE-Project/hyde-themes). 

<div align="center">
  <table><tr><td>

[![Catppuccin-Latte](https://placehold.co/130x30/dd7878/eff1f5?text=Catppuccin-Latte&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Latte)
[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Mocha)
[![Decay-Green](https://placehold.co/130x30/90ceaa/151720?text=Decay-Green&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Decay-Green)
[![Edge-Runner](https://placehold.co/130x30

/d66e6e/212124?text=Edge-Runner&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Edge-Runner)
[![Frosted-Glass](https://placehold.co/130x30/2f789c/eff4f6?text=Frosted-Glass&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Frosted-Glass)

  </td></tr></table>

</div>

Để cài đặt theme, chỉ cần chạy lệnh sau và làm theo hướng dẫn:

```shell
thempatcher install <theme-name> --all
```

Để cài đặt theme mặc định của Hyprland, chỉ cần chạy:

```shell
thempatcher install hyprland-theme
```

Nếu bạn có theme yêu thích của riêng mình và muốn tải lên sau này, vui lòng tham khảo hướng dẫn tại [HyDE](https://github.com/HyDE-Project/hyde-themes#theme-sharing).

---

### Các Phím Tắt Chính

- <kbd>Super</kbd> + <kbd>Q</kbd> | Đóng cửa sổ đang tập trung
- <kbd>Super</kbd> + <kbd>Del</kbd> | Đăng xuất khỏi Hyprland
- <kbd>Super</kbd> + <kbd>W</kbd> | Chuyển cửa sổ giữa chế độ focus và float
- <kbd>Super</kbd> + <kbd>G</kbd> | Chuyển cửa sổ giữa chế độ focus và group
- <kbd>Super</kbd> + <kbd>/</kbd> | Hiển thị menu hướng dẫn
- <kbd>Super</kbd> + <kbd>L</kbd> | Mở màn hình khóa
- <kbd>Super</kbd> + <kbd>Backspace</kbd> | Mở menu đăng xuất
- <kbd>Super</kbd> + <kbd>T</kbd> | Mở terminal (kitty)
- <kbd>Super</kbd> + <kbd>F</kbd> | Mở trình duyệt web (firefox)
