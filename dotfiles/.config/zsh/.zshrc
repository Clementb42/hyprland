# ---------------------------
# -- HISTORY --
# ---------------------------

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS # Don't save duplicate lines
setopt SHARE_HISTORY # Share history between sessions

# ---------------------------
# -- KEYBINDS --
# ---------------------------

bindkey -e

# Ctrl + Left Arrow move from one word to another like in bash
bindkey '^[[1;5D' backward-word

# Ctrl + Right Arrow move from one word to another like in bash
bindkey '^[[1;5C' forward-word

# Case Insensitive Completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


zstyle :compinstall filename '$HOME/.zshrc' 
autoload -Uz compinit
compinit


function mkcd () {
     mkdir "$1" && cd "$1"
}

# ---------------------------
# -- PLUGINS && FILES --
# ---------------------------

source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/.zsh_colors
source ~/.config/zsh/.zsh_aliases

# ---------------------------
# -- FUZZY FINDER --
# ---------------------------

# Color Scheme daemon theme

export FZF_DEFAULT_OPTS='--color=fg:#ebfafa,hl:#f8bfed --color=fg+:#ebfafa,hl+:#ff5edf --color=info:#5fa9f4,prompt:#5fa9f4,pointer:#5fa9f4 --color=marker:#7081d0,spinner:#f7c67f,header:#323449 --border="rounded" --reverse'

# Color schema samurai theme

#export FZF_DEFAULT_OPTS='--color=fg:#ebfafa,bg:#09090d,hl:#c7ffd8 --color=fg+:#ebfafa,bg+:#222326,hl+:#37f499 --color=info:#5fa9f4,prompt:#5fa9f4,pointer:#5fa9f4 --color=marker:#7081d0,spinner:#f7c67f,header:#323449 --border="rounded"'

export FZF_ALT_C_COMMAND="fd -t d . $HOME"
source <(fzf --zsh)


# ---------------------------
# -- STARSHIP -- 
# ---------------------------

eval "$(starship init zsh)"

# Fix Kitty
export TERM=xterm-256color

# Created by `pipx` on 2024-12-12 16:03:27
export PATH="$PATH:$HOME/.local/bin"


