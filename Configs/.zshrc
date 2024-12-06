# Đường dẫn cài đặt Oh-my-zsh
ZSH=/usr/share/oh-my-zsh/

# Đường dẫn theme Powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Danh sách plugin sử dụng
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Tải Oh-my-zsh
[[ -f $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh

# Hàm xử lý lệnh không tìm thấy
function command_not_found_handler {
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
    printf 'zsh: không tìm thấy lệnh: %s\n' "$1"

    # Kiểm tra gói qua pacman
    local entries=( ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"} )
    if (( ${#entries[@]} )) ; then
        printf "${bright}$1${reset} có thể có trong các gói sau:\n"
        local pkg
        for entry in "${entries[@]}" ; do
            local fields=( ${(0)entry} )
            if [[ "$pkg" != "${fields[2]}" ]]; then
                printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
            fi
            printf '    /%s\n' "${fields[4]}"
            pkg="${fields[2]}"
        done
    else
        printf "Không tìm thấy kết quả nào cho ${bright}$1${reset} trong kho gói.\n"
    fi
    return 127
}

# Phát hiện trình hỗ trợ AUR
aurhelper=""
if pacman -Qi yay &>/dev/null; then
   aurhelper="yay"
elif pacman -Qi paru &>/dev/null; then
   aurhelper="paru"
fi

# Hàm cài đặt gói
function in {
    local -a inPkg=("$@")
    local -a arch=()
    local -a aur=()

    for pkg in "${inPkg[@]}"; do
        if pacman -Si "${pkg}" &>/dev/null; then
            arch+=("${pkg}")
        else
            aur+=("${pkg}")
        fi
    done

    if [[ ${#arch[@]} -gt 0 ]]; then
        sudo pacman -S "${arch[@]}"
    fi

    if [[ ${#aur[@]} -gt 0 && $aurhelper ]]; then
        ${aurhelper} -S "${aur[@]}"
    elif [[ ${#aur[@]} -gt 0 ]]; then
        echo "Không phát hiện được trình hỗ trợ AUR. Không thể cài đặt: ${aur[*]}"
    fi
}

# Các alias hữu ích
alias updatea='sudo pacman -Syu && yay -Syu' # Cập nhật toàn bộ hệ thống và gói AUR
alias ff='clear && fastfetch' # Xóa màn hình và chạy fastfetch
alias update='sudo pacman -Syu' # Cập nhật hệ thống
alias c='clear' # Xóa màn hình
alias l='eza -lh --icons=auto' # Liệt kê chi tiết với biểu tượng
alias ls='eza -1 --icons=auto' # Liệt kê cơ bản với biểu tượng
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # Liệt kê tất cả với thư mục trước
alias ld='eza -lhD --icons=auto' # Liệt kê chỉ thư mục
alias lt='eza --icons=auto --tree' # Hiển thị dạng cây
alias un='$aurhelper -Rns' # Gỡ bỏ gói và phụ thuộc
alias up='$aurhelper -Syu' # Cập nhật gói AUR
alias pl='$aurhelper -Qs' # Tìm kiếm gói đã cài đặt
alias pa='$aurhelper -Ss' # Tìm kiếm gói có sẵn
alias pc='$aurhelper -Sc' # Xóa bộ nhớ cache không cần thiết
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # Xóa gói không sử dụng
alias vc='code' # Mở trình chỉnh sửa mã Visual Studio Code

# Các phím tắt di chuyển thư mục
alias home='cd ~' # Về thư mục chính
alias ..='cd ..' # Lùi một cấp
alias ...='cd ../..' # Lùi hai cấp

# Luôn tạo thư mục với đường dẫn đầy đủ
alias mkdir='mkdir -p'

# Tải cấu hình Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Hiển thị Pokemon (kiểm tra pokemon-colorscripts)
if command -v pokemon-colorscripts &>/dev/null; then
    pokemon-colorscripts --no-title -r 1,3,6
fi
