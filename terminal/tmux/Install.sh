#!/bin/bash
DIR=`dirname $0`

# install tmp
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Delete old config
rm $HOME/.tmux.conf

# install config
ln $DIR/.tmux.conf $HOME/

sudo pacman -S tmux
