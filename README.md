# dotfiles

Personal dotfiles for ZSH, terminals, and development tools.

## Contents

This repository contains configuration files for:

- **ZSH**: Shell configuration with aliases, functions, and environment setup
- **Git**: Version control settings and aliases
- **Vim**: Text editor configuration
- **Terminal Emulators**: Alacritty and Kitty configurations
- **EditorConfig**: Consistent coding styles across editors

## Features

### ZSH Configuration
- Organized modular structure with separate files for functions and environment variables
- Useful aliases for common commands (git, docker, system utilities)
- Enhanced history settings
- Custom functions for productivity
- Support for oh-my-zsh with popular plugins
- Auto-loading of custom configurations from `~/.zsh/` directory
- Local overrides support via `~/.zshrc.local`

### Git Configuration
- Sensible defaults for modern Git workflows
- Colorized output
- Helpful aliases
- Auto-setup remote for new branches
- Diff and merge tool configuration

### Vim Configuration
- Modern defaults with sensible settings
- Syntax highlighting and line numbers
- Smart indentation
- Persistent undo
- File type specific settings
- Useful key mappings

### Terminal Configurations
- **Alacritty**: Modern GPU-accelerated terminal emulator
- **Kitty**: Fast, feature-rich terminal emulator
- Both configured with matching color schemes and keybindings

## Installation

### Quick Install

Clone this repository and run the install script:

```bash
git clone https://github.com/IosebKoplatadze/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script will:
1. Create symbolic links for all dotfiles
2. Backup existing configurations
3. Optionally install oh-my-zsh
4. Install recommended ZSH plugins
5. Optionally set ZSH as your default shell

### Manual Installation

If you prefer to install manually, create symbolic links for the files you want:

```bash
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zsh ~/.zsh
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

## Dependencies

### Required
- ZSH (Z Shell)
- Git
- Vim

### Recommended
- [oh-my-zsh](https://ohmyz.sh/) - ZSH framework
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/) - Font for terminals
- [Alacritty](https://alacritty.org/) or [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal emulator

### Optional Tools
These tools are referenced in the configurations:
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [fd](https://github.com/sharkdp/fd) - Fast alternative to find
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Fast grep alternative
- Docker
- kubectl
- Node.js/npm
- Python/pip
- Go
- Rust/Cargo

## Customization

### Local ZSH Overrides

Create a `~/.zshrc.local` file for machine-specific configurations that shouldn't be version controlled:

```bash
# Example ~/.zshrc.local
export CUSTOM_VAR="value"
alias custom-alias="command"
```

### Custom ZSH Modules

Add your own `.zsh` files to the `~/.zsh/` directory, and they will be automatically loaded.

### Git Configuration

Update the email in `~/.gitconfig`:

```bash
git config --global user.email "your-email@example.com"
```

## File Structure

```
.
├── .config/
│   ├── alacritty/
│   │   └── alacritty.toml    # Alacritty terminal config
│   └── kitty/
│       └── kitty.conf         # Kitty terminal config
├── .zsh/
│   ├── env.zsh                # Environment variables
│   └── functions.zsh          # Custom shell functions
├── .editorconfig              # Editor configuration
├── .gitconfig                 # Git configuration
├── .gitignore_global          # Global gitignore patterns
├── .vimrc                     # Vim configuration
├── .zshrc                     # ZSH configuration
├── install.sh                 # Installation script
├── LICENSE                    # MIT License
└── README.md                  # This file
```

## License

MIT License - See [LICENSE](LICENSE) file for details.

## Credits

Author: Ioseb Koplatadze