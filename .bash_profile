#!/bin/sh

#lsの結果をカラーにする
alias ls='ls -G'
#lsの色をシアンにする。
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\W $ '
