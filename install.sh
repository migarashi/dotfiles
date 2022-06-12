#!/bin/sh -eu

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  tfenv \
  zsh-completions \
  zsh-git-prompt

etc=/Applications/Docker.app/Contents/Resources/etc
ln -fs $etc/docker-compose.zsh-completion "$(brew --prefix)"/share/zsh-completions/_docker-compose
ln -fs $etc/docker.zsh-completion "$(brew --prefix)"/share/zsh-completions/_docker

cp .gitconfig ~
git config --global user.email "$1"

ln -fs "$PWD"/.vimrc ~

cp .zshrc ~
tfenv install
terraform -install-autocomplete
