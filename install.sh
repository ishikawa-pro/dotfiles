#!/bin/sh

echo "install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "install tmux"
brew install tmux
#tmuxのプラグイン管理
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#tmuxとMacのクリップボードを共有するため
brew install reattach-to-user-namespace

echo "install cocoapods"
sudo gem install cocoapods -n /usr/local/bin
pod setup

echo "install carthage"
brew install carthage

echo "install tig"
brew install tig

echo "install pip"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py

echo "install pwerline"
sudo pip install powerline-status
#pwerline用のfont
brew install ricty --with-powerline
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

