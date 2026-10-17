# bash / zsh 共通の alias

alias pr-create='gh pr create -w'
alias pr-open='gh pr view -w'

alias llm-branch-name='git diff --staged | llm -s "Please create git branch name from git diff. output is only branch name"'
alias llm-branch-create='git diff --staged | llm -s "Please create git branch name from git diff. output is only branch name" | xargs git co -b'
