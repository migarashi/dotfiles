# shellcheck disable=SC1091,SC2016,SC2034,SC2148
alias cp='cp -i'
alias l='ls -G'
alias la='ls -Ga'
alias ll='ls -Gl'
alias mv='mv -i'
alias shfmt='shfmt -bn -ci -i 2 -sr'

FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit
compinit -i

. "$(brew --prefix)"/opt/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '
