#!/bin/sh

echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update

echo "install tmux"
brew install tmux
#tmuxのプラグイン管理
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#tmuxとMacのクリップボードを共有するため
brew install reattach-to-user-namespace

echo "install various tools"
brew install tig jq bat

