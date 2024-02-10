#!/bin/sh -eu

brew bundle --no-lock
cp .vimrc .zshrc ~
defaults write com.apple.screencapture location ~/Downloads
git config --global core.quotepath false
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global user.email "$1"
git config --global user.name migarashi

echo done!
