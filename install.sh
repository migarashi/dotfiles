#!/bin/sh -eu

cp .gitconfig ~
git config --global user.email "$1"

defaults write com.apple.screencapture location ~/Downloads

ln -fs "$PWD"/.vimrc ~

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cat < brew_formula.txt | xargs brew install

cp .zshrc ~
tfenv install
tfenv use latest
terraform -install-autocomplete

etc=/Applications/Docker.app/Contents/Resources/etc
ln -fs $etc/_docker "$(brew --prefix)"/share/zsh-completions/
ln -fs $etc/docker-compose.zsh-completion "$(brew --prefix)"/share/zsh-completions/_docker-compose

echo done!
