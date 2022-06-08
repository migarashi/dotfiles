#!/bin/sh -eu

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  zsh-completions \
  zsh-git-prompt

cp .gitconfig ~
git config --global user.email "$1"

ln -fs "$PWD"/.vimrc ~
ln -fs "$PWD"/.zshrc ~
