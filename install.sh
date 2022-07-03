#!/bin/sh -eu
# shellcheck disable=SC1090

/bin/cp .gitconfig ~
git config --global user.email "$1"

defaults write com.apple.screencapture location ~/Downloads

ln -fs "$PWD"/.vimrc ~

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  go \
  pwgen \
  shellcheck \
  shfmt \
  tfenv \
  zsh-completions \
  zsh-git-prompt

/bin/cp .zshrc ~
tfenv install
tfenv use latest
terraform -install-autocomplete
. ~/.zshrc

etc=/Applications/Docker.app/Contents/Resources/etc
ln -fs $etc/_docker "$(brew --prefix)"/share/zsh-completions/
ln -fs $etc/docker-compose.zsh-completion "$(brew --prefix)"/share/zsh-completions/_docker-compose

echo done!
