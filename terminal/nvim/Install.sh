#!/bin/bash
sudo dnf install -y neovim gcc
sudo pacman -S neovim gcc ttf-jetbrains-mono-nerd


#Install Tree-sitter CLI
sudo pacman -S nodejs npm
npm install tree-sitter-cli

#Install  ripgrep
sudo pacman -S ripgrep

#Install lazygit
sudo pacman -S lazygit

#Install go DiskUsage()
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu

#Install bottom
sudo pacman -S bottom

#Install AstroNVim
mv $HOME/.config/nvim $HOME/.config/nvim.bak
mv $HOME/.local/share/nvim $HOME/.local/share/nvim.bak
mv $HOME/.local/state/nvim $HOME/.local/state/nvim.bak
mv $HOME/.cache/nvim $HOME/.cache/nvim.bak

git clone https://github.com/AstroNvim/template $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git
# git clone https://gitlab.gkregion72.ru/filin/astronvim.git $HOME/.config/nvim/lua/user
# rm -rf $HOME/.config/nvim/lua/user/.git
