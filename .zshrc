# PATHS
export PATH="$HOME/.cargo/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

# THEME
ZSH_THEME=""

# PLUGINS
plugins=( 
    fzf-tab
    fzf
    zsh-autosuggestions
    zsh-syntax-highlighting
    git
)

source $ZSH/oh-my-zsh.sh

# TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# ALIASES
alias cat="bat --style=auto"
alias sail="./vendor/bin/sail"
alias pint="./vendor/bin/pint"

# DIRS
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# EZA
alias ls="eza -l --icons --git -a"
alias lst="eza --tree --level=2 --long --icons --git"

# STARSHIP
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# ZOXIDE
eval "$(zoxide init zsh)"

# FZF
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"
source <(fzf --zsh)

# ASDF
source /opt/asdf-vm/asdf.sh

PATH=~/.console-ninja/.bin:$PATH