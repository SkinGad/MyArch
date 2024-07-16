#!/bin/bash
DIR=`dirname $0`

# Install zsh
sudo pacman -S zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

# Install my theme
ln $DIR/src/my.zsh-theme $HOME/.oh-my-zsh/themes/

# Delete old settings
rm $HOME/.zshrc

# Install settings
ln $DIR/src/.zshrc $HOME/
