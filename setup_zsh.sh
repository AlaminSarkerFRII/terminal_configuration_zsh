#!/bin/bash

# Install zsh
sudo apt update
sudo apt install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy .zshrc to the home directory
cp .zshrc ~/

# Install necessary plugins
# Example: zsh-syntax-highlighting and zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Set zsh as default shell
chsh -s $(which zsh)

chmod +x setup.sh
