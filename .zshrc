FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit -i

source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"
PROMPT="%B%m%~%b$(git_super_status) %# "
