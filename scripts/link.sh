#!/bin/sh
# 設定ファイルのリンクを張る (何度実行しても安全)
set -eu

DOTFILES="$(cd "$(dirname "$0")/.." && pwd)"
. "$DOTFILES/scripts/lib.sh"
OS="$(detect_os)"

# 共通
link common/git/gitconfig ~/.gitconfig
link common/vim/vimrc ~/.vimrc
link common/tmux/tmux.conf ~/.tmux.conf
link common/mise/config.toml ~/.config/mise/config.toml
link common/nvim ~/.config/nvim
link common/alacritty ~/.config/alacritty

# OS 別
link "$OS/tmux.conf" ~/.tmux.os.conf
case "$OS" in
  mac)
    link mac/zshrc ~/.zshrc
    link mac/zprofile ~/.zprofile
    ;;
  linux)
    # Ubuntu 既定の ~/.bashrc は残し、末尾から読み込む
    append_once ~/.bashrc ". \"$DOTFILES/linux/bashrc\""
    ;;
esac

if ! git config --file ~/.gitconfig.local user.email >/dev/null 2>&1; then
  warn "git の user.email が未設定です: git config --file ~/.gitconfig.local user.email <メールアドレス>"
fi
