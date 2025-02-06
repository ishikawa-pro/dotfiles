#lsの結果をカラーにする
alias ls='ls -G'
##lsの色をシアンにする�export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\W $ '

autoload -Uz compinit && compinit

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%~ $ '
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'


alias pr-create='gh pr create -w'
alias pr-open='gh pr view -w'

alias llm-branch-name='git diff --staged | llm -s "Please create git branch name from git diff. output is only branch name"'
alias llm-branch-create='git diff --staged | llm -s "Please create git branch name from git diff. output is only branch name" | xargs git co -b'



