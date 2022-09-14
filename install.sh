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

echo "install various tools"
brew install tig jq bat

