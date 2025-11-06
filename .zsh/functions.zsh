# Custom functions for ZSH

# Create a directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Extract various archive types
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"     ;;
            *.tar.gz)    tar xzf "$1"     ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar e "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xf "$1"      ;;
            *.tbz2)      tar xjf "$1"     ;;
            *.tgz)       tar xzf "$1"     ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Find a file with a pattern in name
ff() {
    find . -type f -iname '*'"$*"'*' -ls
}

# Find a directory with a pattern in name
fd() {
    find . -type d -iname '*'"$*"'*'
}

# Show disk usage of current directory
duh() {
    du -h --max-depth=1 | sort -hr
}

# Quick git commit and push
gcp() {
    git add .
    git commit -m "$1"
    git push
}

# Create a backup of a file
backup() {
    cp "$1"{,.bak}
}

# Show current git branch
git_current_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
