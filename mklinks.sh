#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0);pwd)

ln -sf $SCRIPT_DIR/_vimrc           ~/.vimrc
ln -sf $SCRIPT_DIR/_gvimrc          ~/.gvimrc
ln -sf $SCRIPT_DIR/_bundlerc        ~/.bundlerc
ln -sf $SCRIPT_DIR/_editorconfig    ~/.editorconfig
ln -sf $SCRIPT_DIR/_tmux.conf       ~/.tmux.conf
ln -sf $SCRIPT_DIR/_zshrc           ~/.zshrc

mkdir -p ~/.vim/bundle
mkdir -p ~/.temp/vim
