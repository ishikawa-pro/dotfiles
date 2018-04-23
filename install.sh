#!/bin/sh

echo "install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "install tmux"
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "install cocoapods"
sudo gem install cocoapods -n /usr/local/bin
pod setup

echo "install carthage"
brew install carthage

echo "install tig"
brew install tig
