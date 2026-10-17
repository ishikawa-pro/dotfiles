this is ishikawa_pro's dotfile

macOS (zsh) と Ubuntu (bash) の両方に対応しています。

# Usage

```sh
git clone git@github.com:ishikawa-pro/dotfiles.git ~/projects/dotfiles
cd ~/projects/dotfiles
./setup.sh
exec $SHELL
```

設定ファイルを追加・変更したあとにリンクだけ張り直すときは `./setup.sh --link-only` を実行します。

# 構成

| ディレクトリ | 内容 |
|---|---|
| `common/` | 両 OS 共通の設定 (git, vim, nvim, tmux, mise, alacritty, シェルの共通部分) |
| `mac/` | macOS 固有の設定と Brewfile |
| `linux/` | Ubuntu 固有の設定と apt パッケージ一覧 |
| `scripts/` | セットアップ用スクリプト |

ツールの管理方法:

- OS のパッケージマネージャー (`mac/Brewfile`, `linux/apt-packages.txt`): tmux, git など OS に近いもの
- mise (`common/mise/config.toml`): Node, Neovim, npm 製 CLI, LazyVim の依存ツール
- uv: Python

# マシン固有の設定

次のファイルは Git 管理外です。マシン固有の設定や秘密情報はここに書きます。

- `~/.bashrc.local` (Ubuntu)
- `~/.zshrc.local` (macOS)
- `~/.gitconfig.local` (`user.email` はここに書く)

```sh
git config --file ~/.gitconfig.local user.email <メールアドレス>
```
