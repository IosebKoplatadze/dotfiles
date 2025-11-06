# ZSH Configuration
# Author: Ioseb Koplatadze

# Path to oh-my-zsh installation (if using oh-my-zsh)
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins to load
plugins=(
    git
    docker
    kubectl
    golang
    node
    npm
    python
    pip
    terraform
    aws
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Load oh-my-zsh if installed
if [[ -f $ZSH/oh-my-zsh.sh ]]; then
    source $ZSH/oh-my-zsh.sh
fi

# User configuration

# Set default editor
export EDITOR='vim'
export VISUAL='vim'

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

# Path configuration
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gco='git checkout'

# Docker aliases
alias dps='docker ps'
alias dpa='docker ps -a'
alias di='docker images'
alias drm='docker rm'
alias drmi='docker rmi'

# Enable color support
if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# Load custom configurations from .zsh directory if it exists
if [[ -d "$HOME/.zsh" ]]; then
    for config_file in $HOME/.zsh/*.zsh; do
        source $config_file
    done
fi

# Load local overrides if they exist
if [[ -f "$HOME/.zshrc.local" ]]; then
    source "$HOME/.zshrc.local"
fi
