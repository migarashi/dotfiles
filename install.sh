#!/bin/sh -eu

brew bundle --no-lock

[ -f "pn.mp3" ] || sox -n pn.mp3 synth 16:00:00 pinknoise
cp .vimrc .zshrc ~
cp settings.json ~/Library/Application\ Support/Code/User/
defaults write com.apple.screencapture location ~/Downloads/
git config --global core.quotepath false
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global user.email "${1:-103835638+migarashi@users.noreply.github.com}"
git config --global user.name "${2:-migarashi}"

echo done!
