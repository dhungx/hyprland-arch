###### *<div align="right"><sub>// thiết kế bởi t2</sub></div>*
<div align = center>
    <a href="https://discord.gg/AYbJ9MJez7">
<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">
    </a>
</div>

<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&suffix=%20members&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">

<img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2FmT5YqjaJFh%3Fwith_counts%3Dtrue&query=%24.approximate_presence_count&suffix=%20online&style=for-the-badge&logo=discord&logoSize=auto&label=The%20HyDe%20Project&labelColor=ebbcba&color=c79bf0">

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

Script cài đặt được thiết kế cho một cài đặt [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) tối giản, nhưng **có thể** hoạt động trên một số [distro dựa trên Arch](https://wiki.archlinux.org/title/Arch-based_distributions).
Mặc dù việc cài đặt HyDE cùng với một [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) khác nên hoạt động, nhưng vì đây là một thiết lập tùy chỉnh mạnh mẽ, nó **sẽ** xung đột với chủ đề [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt), [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https://wiki.archlinux.org/title/GRUB), v.v. và bạn phải chấp nhận rủi ro.

Để cài đặt, thực hiện các lệnh sau:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/prasanthrangan/hyprdots ~/HyDE
cd ~/HyDE/Scripts
./install.sh
```

> [!MẸO]
> Bạn cũng có thể thêm bất kỳ ứng dụng nào bạn muốn cài đặt cùng với HyDE vào `Scripts/custom_apps.lst` và truyền tệp này như một tham số để cài đặt nó như sau:
>
> ```shell
> ./install.sh custom_apps.lst
> ```

Sau khi script cài đặt hoàn tất, bạn cần khởi động lại máy tính để có thể đăng nhập vào màn hình SDDM (hoặc màn hình đen) lần đầu tiên.
Để biết thêm chi tiết, vui lòng tham khảo [hướng dẫn cài đặt wiki](https://github.com/prasanthrangan/hyprdots/wiki/Installation).

<a id="updating"></a>  
<img src="Source/assets/Updating.gif" width="200"/>
---

Để cập nhật HyDE, bạn cần tải về những thay đổi mới nhất từ GitHub và khôi phục lại các cấu hình bằng cách chạy các lệnh sau:

```shell
cd ~/HyDE/Scripts
git pull
./install.sh -r
```

> [!QUAN TRỌNG]
> Lưu ý rằng các cấu hình bạn đã tạo sẽ bị ghi đè nếu chúng được liệt kê để làm như vậy trong `Scripts/restore_cfg.lst`.
> Tuy nhiên, tất cả các cấu hình bị thay thế đã được sao lưu và có thể phục hồi từ `~/.config/cfg_backups`.

Với một tùy chọn cập nhật thứ hai, bạn có thể sử dụng `Hyde restore ...`, có cách quản lý phục hồi và sao lưu tốt hơn.
Để biết thêm chi tiết, tham khảo [wiki quản lý cấu hình Hyde-cli](https://github.com/kRHYME7/Hyde-cli/wiki/Dots-Management).

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="themes"></a>  
<img src="Source/assets/Themes.gif" width="200"/>
---

Tất cả các chủ đề chính thức của chúng tôi được lưu trữ trong một kho lưu trữ riêng, cho phép người dùng cài đặt chúng bằng công cụ themepatcher.
Để biết thêm thông tin, truy cập [HyDE-Project/hyde-themes](https://github.com/HyDE-Project/hyde-themes). 

<div align="center">
  <table><tr><td>

[![Catppuccin-Latte](https://placehold.co/130x30/dd7878/eff1f5?text=Catppuccin-Latte&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Latte)
[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Mocha)
[![Decay-Green](https://placehold.co/130x30/90ceaa/151720?text=Decay-Green&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Decay-Green)
[![Edge-Runner](https://placehold.co/130x30/fada16/000000?text=Edge-Runner&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Edge-Runner)
[![Frosted-Glass](https://placehold.co/130x30/7ed6ff/1e4c84?text=Frosted-Glass&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Frosted-Glass)
[![Graphite-Mono](https://placehold.co/130x30/a6a6a6/262626?text=Graphite-Mono&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Graphite-Mono)
[![Gruvbox-Retro](https://placehold.co/130x30/475437/B5CC97?text=Gruvbox-Retro&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Gruvbox-Retro)
[![Material-Sakura](https://placehold.co/130x30/f2e9

eb/ff4b6a?text=Material-Sakura&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Material-Sakura)

  </td></tr></table>
</div>

Dưới đây là mô tả nhanh các chủ đề chính thức của chúng tôi:

- **Catppuccin-Latte** — Chủ đề với màu sắc tươi sáng, nhẹ nhàng.
- **Catppuccin-Mocha** — Chủ đề ấm áp, dễ chịu.
- **Decay-Green** — Chủ đề với tông màu xanh lá cây.
- **Edge-Runner** — Chủ đề với giao diện tối giản.
- **Frosted-Glass** — Chủ đề trong suốt, dễ chịu.
- **Graphite-Mono** — Chủ đề với màu sắc đơn giản, chủ yếu là xám.
- **Gruvbox-Retro** — Chủ đề tối giản, với tông màu cổ điển.
- **Material-Sakura** — Chủ đề với tông màu hồng thanh thoát.

<a id="styles"></a>  
---

<div align="center">

### Các kiểu dáng hiện tại của chúng tôi!

<table><tr><td>

[![Style 1](https://placehold.co/130x30/70a8af/23282e?text=Style%201&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Style-1)
[![Style 2](https://placehold.co/130x30/dfaddd/732b5b?text=Style%202&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Style-2)
[![Style 3](https://placehold.co/130x30/f0ef8c/2b3847?text=Style%203&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Style-3)

</td></tr></table>

</div>

##### Các kiểu dáng hiện tại:
- **Style 1**: Giao diện cơ bản, đơn giản.
- **Style 2**: Giao diện tối giản với đường viền.
- **Style 3**: Giao diện với hiệu ứng trong suốt. 

---

> [!MẸO]
> Bạn có thể tìm thêm các kiểu dáng khác trên [HyDE-Project/HyDE-Styles](https://github.com/HyDE-Project/HyDE-Styles).

<a id="keybindings"></a>  

---

## Phím tắt:

| Ký hiệu phím        | Mô tả                                                                 |
|---------------------|------------------------------------------------------------------------|
| `Super + W`          | Mở Hyprland Menu.                                                      |
| `Super + H`          | Mở Hyde Launcher.                                                      |
| `Super + P`          | Mở ứng dụng hoặc lệnh từ Command Pallette.                              |
| `Super + C`          | Mở Console.                                                           |
| `Super + E`          | Mở Explorer.                                                          |
| `Super + F`          | Mở File manager.                                                      |
| `Super + Tab`        | Chuyển cửa sổ hiện tại.                                               |
| `Super + Shift + Q`  | Đóng cửa sổ hiện tại.                                                 |
| `Super + Shift + R`  | Khởi động lại Hyprland.                                               |
| `Super + Shift + S`  | Chụp màn hình.                                                       |
| `Super + D`          | Mở Dash.                                                              |
