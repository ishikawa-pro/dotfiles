#!/bin/sh

echo "install homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "install tmux"
brew install tmux
#tmux$B$N%W%i%0%$%s4IM}(B
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#tmux$B$H(BMac$B$N%/%j%C%W%\!<%I$r6&M-$9$k$?$a(B
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
#pwerline$BMQ$N(Bfont
brew install ricty --with-powerline
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

