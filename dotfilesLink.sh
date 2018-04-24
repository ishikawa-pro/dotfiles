#!/bin/sh

mkdir -p ~/.vim/bundle
mkdir -p ~/.config/powerline/
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim/
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/powerline ~/.config/powerline
