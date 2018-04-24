#!/bin/sh

#powerline
. /Library/Python/2.7/site-packages/powerline/bindings/bash/powerline.sh

#lsの結果をカラーにする
alias ls='ls -G'
#lsの色をシアンにする。
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\W $ '
