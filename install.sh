#!/bin/sh -eu

brew bundle --no-lock
cp .vimrc .zshrc ~
defaults write com.apple.screencapture location ~/Downloads
git config --global core.quotepath false
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global user.email "${1:-103835638+migarashi@users.noreply.github.com}"
git config --global user.name "${2:-migarashi}"

echo done!
