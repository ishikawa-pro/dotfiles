# setup.sh / scripts/*.sh 共通の関数

log() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33mwarn:\033[0m %s\n' "$*" >&2; }

detect_os() {
  case "$(uname -s)" in
    Darwin) echo mac ;;
    Linux) echo linux ;;
    *) echo unknown ;;
  esac
}

# link <リポジトリ内のパス> <リンク先>
# リンク先に実ファイル/ディレクトリがあれば <リンク先>.bak.<日時> に退避する
link() {
  src="$DOTFILES/$1"
  dest="$2"
  if [ "$(readlink "$dest" 2>/dev/null)" = "$src" ]; then
    return 0
  fi
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    backup="$dest.bak.$(date +%Y%m%d%H%M%S)"
    warn "$dest を $backup に退避します"
    mv "$dest" "$backup"
  fi
  ln -sfn "$src" "$dest"
  log "link $dest -> $src"
}

# append_once <ファイル> <行>  行がまだ無ければ末尾に追記する
append_once() {
  touch "$1"
  grep -qxF "$2" "$1" || {
    printf '\n%s\n' "$2" >>"$1"
    log "$1 に追記: $2"
  }
}
