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
    "ttf-font-awesome"
    "vim"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"
    "fuse2"
    "gtk4"
    "libadwaita"
    "jq"
    "python-gobject"
    "xdotool"
    "brightnessctl"
    "networkmanager"
    "wireplumber"
    "kitty"
    "bat"
    "eza"
    "fzf"
    "zsh"
    "starship"
    "discord"
    "fd"
    "kubectl"
    "kubectx"
    "kubens"
    "k9s"
    "helm"
    "aws-cli"
    "bitwarden"
    
)

installer_yay=(
    "wlogout" 
    "zen-browser-bin"
    "spotify"
    "swaync"
    "helmfile"
    "hyprshot"
    "galaxybudsclient-bin"
    "anytype-bin"
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";
