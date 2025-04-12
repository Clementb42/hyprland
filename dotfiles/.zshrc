#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#
# ---------------------------------------------------
# LOAD CUSTOM ZSH Files if directory exist
# -----------------------------------------------------
if [ -d "$HOME/.config/zsh" ] ;then
    source "$HOME/.config/zsh/.zshrc"
else
    echo "Directory zsh not found in $HOME/.config"
fi
