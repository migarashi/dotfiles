#!/bin/sh -eu

defaults write com.apple.screencapture location ~/Downloads

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  go \
  pwgen \
  shellcheck \
  shfmt \
  tfenv \
  zsh-completions \
  zsh-git-prompt

etc=/Applications/Docker.app/Contents/Resources/etc
ln -fs $etc/_docker "$(brew --prefix)"/share/zsh-completions/_docker
ln -fs $etc/docker-compose.zsh-completion "$(brew --prefix)"/share/zsh-completions/_docker-compose

cp .gitconfig ~
git config --global user.email "$1"

ln -fs "$PWD"/.vimrc ~

cp .zshrc ~
tfenv install
tfenv use latest
terraform -install-autocomplete

echo done!
