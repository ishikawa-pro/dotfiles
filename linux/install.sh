#!/bin/sh
# Ubuntu 用のパッケージ導入
set -eu

DIR="$(cd "$(dirname "$0")" && pwd)"

sudo apt-get update
grep -vE '^\s*(#|$)' "$DIR/apt-packages.txt" | xargs sudo apt-get install -y
