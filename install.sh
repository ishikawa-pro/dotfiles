#!/bin/sh

echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

echo "install tmux"
brew install tmux
#tmux$B$N%W%i%0%$%s4IM}(B
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#tmux$B$H(BMac$B$N%/%j%C%W%\!<%I$r6&M-$9$k$?$a(B
brew install reattach-to-user-namespace

echo "install various tools"
brew install tig jq bat

