#!/bin/sh
# dotfiles のセットアップ (何度実行しても安全)
#   ./setup.sh             パッケージ導入 + ツール導入 + リンク
#   ./setup.sh --link-only リンクだけ張り直す
set -eu

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
. "$DOTFILES/scripts/lib.sh"
OS="$(detect_os)"

if [ "$OS" = unknown ]; then
  warn "未対応の OS です: $(uname -s)"
  exit 1
fi

if [ "${1:-}" = "--link-only" ]; then
  sh "$DOTFILES/scripts/link.sh"
  exit 0
fi

log "OS 別のパッケージを導入 ($OS)"
sh "$DOTFILES/$OS/install.sh"

if [ ! -x ~/.local/bin/mise ]; then
  log "mise を導入"
  curl -fsSL https://mise.run | sh
fi

if [ ! -x ~/.local/bin/uv ]; then
  log "uv を導入"
  # シェル設定は common/shell/env.sh で行うので、インストーラーには書き換えさせない
  curl -LsSf https://astral.sh/uv/install.sh | env UV_NO_MODIFY_PATH=1 sh
fi

if [ ! -d ~/.tmux/plugins/tpm ]; then
  log "tpm を導入"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

log "リンクを張る"
sh "$DOTFILES/scripts/link.sh"

log "mise のツールを導入"
~/.local/bin/mise install

log "完了。新しいシェルを開いてください (exec \$SHELL)"
