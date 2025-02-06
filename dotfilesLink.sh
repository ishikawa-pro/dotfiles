#!/bin/sh

mkdir -p ~/.vim/bundle
# git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/colors ~/.vim/
ln -sf $PWD/.tmux.conf ~/.tmux.conf
ln -sf $PWD/.gitconfig ~/.gitconfig
# ln -sf $PWD/.bash_profile ~/.bash_profile
ln -sf $PWD/.zshrc ~/.zshrc
ln -sf $PWD/.zprofile ~/.zprofile
ln -sf $PWD/.config/alacritty ~/.config/alacritty
