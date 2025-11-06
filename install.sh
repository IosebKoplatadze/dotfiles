#!/bin/bash

# Dotfiles Installation Script
# Author: Ioseb Koplatadze

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Get the directory where the script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${GREEN}Installing dotfiles from ${DOTFILES_DIR}${NC}"

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"

    if [ -e "$target" ] || [ -L "$target" ]; then
        echo -e "${YELLOW}Backup existing file: $target${NC}"
        mv "$target" "${target}.backup.$(date +%Y%m%d_%H%M%S)"
    fi

    echo -e "${GREEN}Creating symlink: $target -> $source${NC}"
    ln -sf "$source" "$target"
}

# Install ZSH configuration
echo -e "\n${GREEN}Installing ZSH configuration...${NC}"
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.zsh" "$HOME/.zsh"

# Install Git configuration
echo -e "\n${GREEN}Installing Git configuration...${NC}"
create_symlink "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"

# Install Vim configuration
echo -e "\n${GREEN}Installing Vim configuration...${NC}"
create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"

# Create vim undo directory if it doesn't exist
if [ ! -d "$HOME/.vim/undo" ]; then
    mkdir -p "$HOME/.vim/undo"
fi

# Install EditorConfig
echo -e "\n${GREEN}Installing EditorConfig...${NC}"
create_symlink "$DOTFILES_DIR/.editorconfig" "$HOME/.editorconfig"

# Install terminal configurations
echo -e "\n${GREEN}Installing terminal configurations...${NC}"
mkdir -p "$HOME/.config/alacritty"
mkdir -p "$HOME/.config/kitty"
create_symlink "$DOTFILES_DIR/.config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
create_symlink "$DOTFILES_DIR/.config/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# Check if oh-my-zsh is installed
echo -e "\n${YELLOW}Checking for oh-my-zsh...${NC}"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo -e "${YELLOW}oh-my-zsh is not installed.${NC}"
    echo -e "${YELLOW}Would you like to install it? (y/n)${NC}"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo -e "${GREEN}Installing oh-my-zsh...${NC}"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    fi
else
    echo -e "${GREEN}oh-my-zsh is already installed${NC}"
fi

# Install ZSH plugins
echo -e "\n${GREEN}Checking ZSH plugins...${NC}"
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [ -d "$HOME/.oh-my-zsh" ]; then
    # zsh-autosuggestions
    if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
        echo -e "${GREEN}Installing zsh-autosuggestions...${NC}"
        git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
    fi

    # zsh-syntax-highlighting
    if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
        echo -e "${GREEN}Installing zsh-syntax-highlighting...${NC}"
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
    fi
fi

# Set ZSH as default shell
echo -e "\n${YELLOW}Would you like to set ZSH as your default shell? (y/n)${NC}"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    if [ -x "$(command -v zsh)" ]; then
        if [ "$SHELL" != "$(which zsh)" ]; then
            echo -e "${GREEN}Setting ZSH as default shell...${NC}"
            chsh -s "$(which zsh)"
        else
            echo -e "${GREEN}ZSH is already your default shell${NC}"
        fi
    else
        echo -e "${RED}ZSH is not installed. Please install ZSH first.${NC}"
    fi
fi

echo -e "\n${GREEN}✓ Dotfiles installation complete!${NC}"
echo -e "${YELLOW}Please restart your terminal or run 'source ~/.zshrc' to apply changes.${NC}"
echo -e "${YELLOW}Note: Update the email in ~/.gitconfig with your actual email address.${NC}"
