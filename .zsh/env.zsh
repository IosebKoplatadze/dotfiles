# Environment variables for development

# Go environment
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Node.js environment
export NODE_OPTIONS="--max-old-space-size=4096"

# Python environment
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

# Rust environment
export PATH="$HOME/.cargo/bin:$PATH"

# Local binaries
export PATH="$HOME/.local/bin:$PATH"

# Homebrew (for macOS)
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Color support for various tools
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Less configuration
export LESS='-R -i -M'
export LESSCHARSET='utf-8'

# FZF configuration (if installed)
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# Ripgrep configuration
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
