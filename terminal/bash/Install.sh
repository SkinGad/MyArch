#!/bin/bash
DIR=`dirname $0`
rm $HOME/.bashrc | true
ln $DIR/.bashrc $HOME/
