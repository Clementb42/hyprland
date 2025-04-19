# ----------------------------------------------------- 
# Install packages 
# ----------------------------------------------------- 

installer_packages=(
    "hyprland"
    "waybar"
    "rofi-wayland"
    "dunst"
    "nautilus"
    "gnome-text-editor"
    "xdg-desktop-portal-hyprland"
    "qt5-wayland"
    "qt6-wayland"
    "hyprpaper"
    "hyprlock"
    "hypridle"
    "noto-fonts"
    "papirus-icon-theme"
    "libnotify"
    "ttf-font-awesome"
    "vim"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"
    "ttf-jetbrains-mono"
    "fuse2"
    "gtk4"
    "libadwaita"
    "jq"
    "python-gobject"
    "xdotool"
    "brightnessctl"
    "networkmanager"
    "wireplumber"
    "blueman"
    "kitty"
    "bat"
    "eza"
    "fzf"
    "zsh"
    "starship"
    "swaync"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
    "discord"
    "fd"
    "bitwarden"
# DevOps tools
    "kubectl"
    "kubectx"
    "kubens"
    "k9s"
    "helm"
    "aws-cli"
)

installer_yay=(
    "wlogout" 
    "waypaper"
    "hyprshot"
    "zen-browser-bin"
    "spotify"
    "helmfile"
    "galaxybudsclient-bin"
    "anytype-bin"
    "bibata-cursor-theme-bin"
    "nautilus-open-any-terminal"
    "arsenal"
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";
