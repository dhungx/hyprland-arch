###### *<div align="right"><sub>// Được thiết kế bởi t2</sub></div>*
<div align="center">

![hyde_banner](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyde_banner.png)

<br>

  <a href="#installation"><kbd> <br> Installation <br> </kbd></a>&ensp;&ensp;
  <a href="#themes"><kbd> <br> Themes <br> </kbd></a>&ensp;&ensp;
  <a href="#styles"><kbd> <br> Styles <br> </kbd></a>&ensp;&ensp;
  <a href="#keybindings"><kbd> <br> Keybindings <br> </kbd></a>&ensp;&ensp;
  <a href="https://www.youtube.com/watch?v=2rWqdKU1vu8&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY&index=1"><kbd> <br> Youtube <br> </kbd></a>&ensp;&ensp;
  <a href="https://github.com/prasanthrangan/hyprdots/wiki"><kbd> <br> Wiki <br> </kbd></a>&ensp;&ensp;
  <a href="https://discord.gg/qWehcFJxPa"><kbd> <br> Discord <br> </kbd></a>

</div><br><br>

<br><div align="center"><img width="12%" src="Source/assets/Arch.svg"/><br></div>

<a id="installation"></a>  
<img src="Source/assets/Installation.gif" width="200"/>
---

Tập lệnh cài đặt được thiết kế để cài đặt [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) ở mức tối thiểu, nhưng **có thể** hoạt động trên một số [bản phân phối dựa trên Arch](https://wiki .archlinux.org/title/Arch-based_distributions). Khi cài đặt HyDE cùng với một [DE](https://wiki.archlinux.org/title/Desktop_environment)/[WM](https://wiki.archlinux.org/title/Window_manager) khác sẽ hoạt động, do đây là một thiết lập được tùy chỉnh nhiều, nó **sẽ** xung đột với [GTK](https://wiki.archlinux.org/title/GTK)/[Qt](https://wiki.archlinux.org/title/Qt) của bạn theo chủ đề, [Shell](https://wiki.archlinux.org/title/Command-line_shell), [SDDM](https://wiki.archlinux.org/title/SDDM), [GRUB](https:// wiki.archlinux.org/title/GRUB), v.v. và bạn phải tự chịu rủi ro. Để được Nixos hỗ trợ, có một dự án riêng đang được duy trì @ [Hydenix](https://github.com/richen604/hydenix/tree/main)

> [! QUAN TRỌNG] > Tập lệnh cài đặt sẽ tự động phát hiện thẻ NVIDIA và cài đặt trình điều khiển nvidia-dkms cho kernel của bạn. > Hãy đảm bảo rằng card NVIDIA của bạn hỗ trợ trình điều khiển dkms trong danh sách được cung cấp [tại đây](https://wiki.archlinux.org/title/NVIDIA).

> [!THẬN TRỌNG]
> Tập lệnh sửa đổi cấu hình `grub` hoặc `systemd-boot` của bạn để bật NVIDIA DRM. Để cài đặt, thực hiện các lệnh sau:

```shell
pacman -S --needed git base-devel
git clone --depth 1 https://github.com/dhungx/hyprland-arch/ ~/HyDE
cd ~/HyDE/Scripts
./install.sh
```

> [!TIP]
> Bạn cũng có thể thêm bất kỳ ứng dụng nào khác mà bạn muốn cài đặt cùng với HyDE vào `Scripts/custom_apps.lst` và chuyển tệp dưới dạng tham số để cài đặt nó như sau:
>
> ```shell
> ./install.sh custom_apps.lst
> ```

Là tùy chọn cài đặt thứ hai, bạn cũng có thể sử dụng `Hyde-install`, tùy chọn này có thể dễ dàng hơn đối với một số người. Xem hướng dẫn cài đặt HyDE trong [Hyde-cli - Cách sử dụng](https://github.com/kRHYME7/Hyde-cli?tab=readme-ov-file#usage).

Vui lòng khởi động lại sau khi tập lệnh cài đặt hoàn tất và đưa bạn đến màn hình đăng nhập SDDM (hoặc màn hình đen) lần đầu tiên. Để biết thêm chi tiết, vui lòng tham khảo [wiki cài đặt](https://github.com/prasanthrangan/hyprdots/wiki/Installation).

<a id="updating"></a>  
<img src="Source/assets/Updating.gif" width="200"/>
---

Để cập nhật HyDE, bạn cần lấy những thay đổi mới nhất từ ​​GitHub và khôi phục cấu hình bằng cách chạy các lệnh sau:

```shell
cd ~/HyDE/Scripts
git pull
./install.sh -r
```

> [!Quan Trọng]
> Xin lưu ý rằng mọi cấu hình bạn đã thực hiện sẽ bị ghi đè nếu được liệt kê để thực hiện theo danh sách `Scripts/restore_cfg.lst`. > Tuy nhiên, tất cả các cấu hình được thay thế đều được sao lưu và có thể được khôi phục từ trong `~/.config/cfg_backups`.

Là tùy chọn cập nhật thứ hai, bạn có thể sử dụng `Hyde recovery ...`, tùy chọn này có cách quản lý các tùy chọn khôi phục và sao lưu tốt hơn. Để biết thêm chi tiết, bạn có thể tham khảo [Hyde-cli - wiki quản lý](https://github.com/kRHYME7/Hyde-cli/wiki/Dots-Management)

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="themes"></a>  
<img src="Source/assets/Themes.gif" width="200"/>
---

All our official themes are stored in a separate repository, allowing users to install them using themepatcher.
For more information, visit [HyDE-Project/hyde-themes](https://github.com/HyDE-Project/hyde-themes). 

<div align="center">
  <table><tr><td>

[![Catppuccin-Latte](https://placehold.co/130x30/dd7878/eff1f5?text=Catppuccin-Latte&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Latte)
[![Catppuccin-Mocha](https://placehold.co/130x30/b4befe/11111b?text=Catppuccin-Mocha&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Catppuccin-Mocha)
[![Decay-Green](https://placehold.co/130x30/90ceaa/151720?text=Decay-Green&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Decay-Green)
[![Edge-Runner](https://placehold.co/130x30/fada16/000000?text=Edge-Runner&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Edge-Runner)
[![Frosted-Glass](https://placehold.co/130x30/7ed6ff/1e4c84?text=Frosted-Glass&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Frosted-Glass)
[![Graphite-Mono](https://placehold.co/130x30/a6a6a6/262626?text=Graphite-Mono&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Graphite-Mono)
[![Gruvbox-Retro](https://placehold.co/130x30/475437/B5CC97?text=Gruvbox-Retro&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Gruvbox-Retro)
[![Material-Sakura](https://placehold.co/130x30/f2e9e1/b4637a?text=Material-Sakura&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Material-Sakura)
[![Nordic-Blue](https://placehold.co/130x30/D9D9D9/476A84?text=Nordic-Blue&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Nordic-Blue)
[![Rosé-Pine](https://placehold.co/130x30/c4a7e7/191724?text=Rosé-Pine&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Rose-Pine)
[![Synth-Wave](https://placehold.co/130x30/495495/ff7edb?text=Synth-Wave&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Synth-Wave)
[![Tokyo-Night](https://placehold.co/130x30/7aa2f7/24283b?text=Tokyo-Night&font=Oswald)](https://github.com/prasanthrangan/hyde-themes/tree/Tokyo-Night)

  </td></tr></table>
</div>

> [!TIP]
> Everyone, including you can create, maintain, and share additional themes, all of which can be installed using themepatcher!
> To create your own custom theme, please refer to the [theming wiki](https://github.com/prasanthrangan/hyprdots/wiki/Theming).
> If you wish to have your hyde theme showcased, or you want to find some non-official themes, visit [kRHYME7/hyde-gallery](https://github.com/kRHYME7/hyde-gallery)!

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="styles"></a>  
<img src="Source/assets/Styles.gif" width="200"/>
---

<div align="center"><table><tr>Theme Select</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/></td></tr></table></div>

<div align="center"><table><tr><td>Wallpaper Select</td><td>Launcher Select</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
<tr><td>Wallbash Modes</td><td>Notification Action</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Rofi Launcher</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_3.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_5.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_6.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_7.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_8.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_9.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_10.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_11.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_12.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Wlogout Menu</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/></td></tr></table></div>

<div align="center"><table><tr>Game Launcher</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_3.png"/></td></tr></table></div>
<div align="center"><table><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_5.png"/></td></tr></table></div>

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<a id="keybindings"></a>  
<img src="Source/assets/Keybindings.gif" width="200"/>
---


Dưới đây là bản dịch tiếng Việt của bảng phím tắt:

<div align="center">

| Phím | Hành động |
| :--- | :--- |
| <kbd>Super</kbd> + <kbd>Q</kbd><br><kbd>Alt</kbd> + <kbd>F4</kbd> | Đóng cửa sổ đang chọn |
| <kbd>Super</kbd> + <kbd>Del</kbd> | Kết thúc phiên Hyprland |
| <kbd>Super</kbd> + <kbd>W</kbd> | Chuyển đổi cửa sổ giữa trạng thái tiêu điểm và trạng thái nổi |
| <kbd>Super</kbd> + <kbd>G</kbd> | Chuyển đổi cửa sổ giữa tiêu điểm và nhóm |
| <kbd>Super</kbd> + <kbd>slash</kbd> | Hiển thị gợi ý phím tắt |
| <kbd>Alt</kbd> + <kbd>Enter</kbd> | Chuyển đổi cửa sổ giữa tiêu điểm và toàn màn hình |
| <kbd>Super</kbd> + <kbd>L</kbd> | Khởi động màn hình khóa |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> | Ghim cửa sổ đang chọn |
| <kbd>Super</kbd> + <kbd>Backspace</kbd> | Hiển thị menu đăng xuất |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>W</kbd> | Chuyển đổi trạng thái của Waybar |
| <kbd>Super</kbd> + <kbd>Enter</kbd> | Khởi chạy Terminal (kitty) |
| <kbd>Super</kbd> + <kbd>E</kbd> | Khởi chạy trình quản lý tệp (dolphin) |
| <kbd>Super</kbd> + <kbd>C</kbd> | Khởi chạy trình soạn thảo văn bản (vscode) |
| <kbd>Super</kbd> + <kbd>F</kbd> | Khởi chạy trình duyệt web (firefox) |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Esc</kbd> | Khởi chạy trình quản lý hệ thống (htop/btop hoặc top) |
| <kbd>Super</kbd> + <kbd>A</kbd> | Khởi chạy trình tìm kiếm ứng dụng (rofi) |
| <kbd>Super</kbd> + <kbd>Tab</kbd> | Khởi chạy trình chuyển đổi cửa sổ (rofi) |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> | Khởi chạy trình quản lý tệp bằng rofi |
| <kbd>F10</kbd> | Tắt/bật âm thanh |
| <kbd>F11</kbd> | Giảm âm lượng |
| <kbd>F12</kbd> | Tăng âm lượng |
| <kbd>Super</kbd> + <kbd>P</kbd> | Chụp màn hình khu vực |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>P</kbd> | Chụp màn hình khu vực (màn hình đóng băng) |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd> | Chụp màn hình màn hình hiện tại |
| <kbd>PrtScn</kbd> | Chụp màn hình tất cả các màn hình |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd> | Tắt hiệu ứng Hypr để chơi game |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>→</kbd><kbd>←</kbd> | Chuyển đổi hình nền |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>↑</kbd><kbd>↓</kbd> | Chuyển đổi chế độ Waybar |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd> | Khởi chạy menu chọn chế độ Wallbash (rofi) |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd> | Khởi chạy menu chọn giao diện (rofi) |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd> | Khởi chạy menu chọn phong cách (rofi) |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>X</kbd> | Khởi chạy menu chọn kiểu giao diện (rofi) |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd> | Khởi chạy menu chọn hình nền (rofi) |
| <kbd>Super</kbd> + <kbd>V</kbd> | Khởi chạy clipboard (rofi) |
| <kbd>Super</kbd> + <kbd>K</kbd> | Chuyển đổi bố cục bàn phím |
| <kbd>Super</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Di chuyển tiêu điểm cửa sổ |
| <kbd>Alt</kbd> + <kbd>Tab</kbd> | Thay đổi tiêu điểm cửa sổ |
| <kbd>Super</kbd> + <kbd>[0-9]</kbd> | Chuyển đổi workspace |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd> | Chuyển đổi workspace liền kề |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>↓</kbd> | Di chuyển đến workspace trống đầu tiên |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Thay đổi kích thước cửa sổ |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd> | Chuyển cửa sổ tiêu điểm đến workspace liền kề |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Di chuyển cửa sổ tiêu điểm trong workspace hiện tại |
| <kbd>Super</kbd> + <kbd>MouseScroll</kbd> | Cuộn qua các workspace hiện có |
| <kbd>Super</kbd> + <kbd>LeftClick</kbd><br><kbd>Super</kbd> + <kbd>Z</kbd> | Di chuyển cửa sổ tiêu điểm |
| <kbd>Super</kbd> + <kbd>RightClick</kbd><br><kbd>Super</kbd> + <kbd>X</kbd> | Thay đổi kích thước cửa sổ tiêu điểm |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> | Chuyển đổi đến workspace đặc biệt (scratchpad) |
| <kbd>Super</kbd> + <kbd>S</kbd> | Chuyển đổi đến workspace đặc biệt |
| <kbd>Super</kbd> + <kbd>J</kbd> | Chuyển đổi cửa sổ tiêu điểm sang kiểu chia đôi |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>[0-9]</kbd> | Chuyển cửa sổ tiêu điểm đến workspace mà không hiển thị thông báo |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>H</kbd> | Chuyển qua lại giữa các cửa sổ nhóm từ sau về trước |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>L</kbd> | Chuyển qua lại giữa các cửa sổ nhóm từ trước về sau |

</div>

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>
