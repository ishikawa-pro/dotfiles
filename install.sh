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

echo "install various tools"
brew install tig jq bat

