# shellcheck disable=SC1091,SC2016,SC2034,SC2148
. "$(brew --prefix)"/opt/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

autoload -Uz compinit && compinit -i

alias cp='cp -i'
alias grep='grep --color=auto'
alias l='ls -G'
alias la='ls -Ga'
alias ll='ls -Gl'
alias mv='mv -i'
alias python='python3'
alias shfmt='shfmt -bn -ci -i 2 -sr'
