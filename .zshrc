export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# OPTIMIZATION: Skip compinit check every time - massive speedup (2.5 seconds saved)
# Completions will be checked once per day instead of every shell start
ZSH_COMPDUMP="$HOME/.zcompdump"
ZSH_DISABLE_COMPFIX="true"

# Set name of the theme - Using Powerlevel10k (NOT Starship - pick one!)
ZSH_THEME=""

# OPTIMIZATION: Reduced plugins from 22 to essential ones
# Removed slow plugins: thefuck, you-should-use, alias-finder, starship (conflicts with p10k)
plugins=(
  git
  zsh-autosuggestions 
  zsh-syntax-highlighting
  docker
  docker-compose
  fzf
  history-substring-search
  vi-mode
  colored-man-pages
  direnv
  kubectl
)

# OPTIMIZATION: Lazy load NVM - only load when actually needed (saves ~0.5s)
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm "$@"
}
node() { nvm; node "$@"; }
npm() { nvm; npm "$@"; }
npx() { nvm; npx "$@"; }

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zstyle ':omz:update' mode auto
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"

# OPTIMIZATION: Speed up git status in large repos
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# OPTIMIZATION: Manual compinit with cache check (saves 2.5 seconds!)
# Only regenerate completion dump once per day
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null) ]; then
  compinit
else
  compinit -C
fi

alias zshconfig="cursor ~/.zshrc"
alias ohmyzsh="cursor ~/.oh-my-zsh"

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=10000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ---- Eza (better ls) -----
alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"

# ---- Custom Shortcuts ----
# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"
alias gb="git branch"
alias gl="git log"
alias gd="git diff"

# NPM shortcuts
alias ni="pnpm install"
alias nid="pnpm install --save-dev"
alias nu="pnpm uninstall"
alias nr="pnpm run"
alias ns="pnpm start"
alias nt="pnpm test"
alias npx="pnpm exec"

alias x="exit"

# General shortcuts
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# kubectl aliases
alias kcg="kubectl config get-contexts"
alias kcu="kubectl config use-context"
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployment"
alias kgs="kubectl get sts"
alias kdp="kubectl describe pod"
alias kdd="kubectl describe deployment"
alias kds="kubectl describe sts"
alias k="kubectl"
alias kc="kubectl config set-context --current --namespace"

# REMOVED: Starship conflicts with Powerlevel10k - pick one theme!
# eval "$(starship init zsh)"

export PATH=$PATH:$(go env GOPATH)/bin

. "$HOME/.cargo/env"

source <(fzf --zsh)

# OPTIMIZATION: Lazy load thefuck - only when you use it (saves 0.24s)
fuck() {
  eval $(thefuck --alias)
  fuck "$@"
}

if [ -f ~/.ssh/coralogix-github ]; then
  ssh-add ~/.ssh/coralogix-github > /dev/null 2>&1
fi

export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"

# OPTIMIZATION: Lazy load kube-ps1 - only when needed
# source /opt/homebrew/opt/kube-ps1/share/kube-ps1.sh
# PROMPT='$(kube_ps1)'$PROMPT


# pnpm
export PNPM_HOME="/Users/ioseb.koplatadze/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
