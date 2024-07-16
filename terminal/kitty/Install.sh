#!/bin/bash

DIR=`dirname $0`
rm -rf $HOME/.config/kitty | true

mkdir $HOME/.config/kitty
ln $DIR/Catppuccin.conf $HOME/.config/kitty/
ln $DIR/current-theme.conf $HOME/.config/kitty/
ln $DIR/kitty.conf $HOME/.config/kitty/
ln $DIR/launch.conf $HOME/.config/kitty/
