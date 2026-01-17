# dotfiles

My personal dotfiles for macOS development environment.

## Contents

- **Shell Configuration**
  - `.zshrc` - Zsh shell configuration
  - `.zshenv` - Zsh environment variables
  - `.p10k.zsh` - Powerlevel10k theme configuration
  - `.profile` - Shell profile
  - `.bash_history` - Bash history

- **Development Tools**
  - `.gitconfig` - Git configuration
  - `.npmrc` - npm configuration
  - `.ripgreprc` - ripgrep configuration

- **Editor & Terminal**
  - `.tmux.conf` - tmux configuration
  - `.viminfo` - Vim session information
  - `.config/nvim/` - Neovim (LazyVim) configuration with Monokai Pro theme
  - `.config/alacritty/` - Alacritty terminal emulator configuration
  - `.config/ghostty/` - Ghostty terminal emulator configuration
  - `.config/helix/` - Helix editor configuration
  - `.config/tmux/` - tmux plugins and additional configuration
  - `.config/zellij/` - Zellij terminal multiplexer configuration

## Installation

1. Clone this repository:
```bash
git clone https://github.com/IosebKoplatadze/dotfiles.git ~/dotfiles
```

2. Backup your existing dotfiles (optional but recommended):
```bash
mkdir ~/dotfiles_backup
cp ~/.zshrc ~/.zshenv ~/.p10k.zsh ~/.profile ~/.bash_history ~/.gitconfig ~/.npmrc ~/.ripgreprc ~/.tmux.conf ~/.viminfo ~/dotfiles_backup/ 2>/dev/null
```

3. Create symbolic links:
```bash
cd ~/dotfiles
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles/.profile ~/.profile
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.npmrc ~/.npmrc
ln -sf ~/dotfiles/.ripgreprc ~/.ripgreprc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/.config/ghostty ~/.config/ghostty
ln -sf ~/dotfiles/.config/helix ~/.config/helix
ln -sf ~/dotfiles/.config/tmux ~/.config/tmux
ln -sf ~/dotfiles/.config/zellij ~/.config/zellij
```

4. Reload your shell:
```bash
source ~/.zshrc
```

## Notes

- Make sure to review and update git user information in `.gitconfig` before using
- Some configurations may require additional dependencies (Powerlevel10k, tmux plugins, etc.)