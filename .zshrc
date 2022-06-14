alias cp='cp -i'
alias l='ls -G'
alias la='ls -Ga'
alias ll='ls -Gl'
alias mv='mv -i'

FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit -i

source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
PROMPT="%B%m%~%b$(git_super_status) %# "
