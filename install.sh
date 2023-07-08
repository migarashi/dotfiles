#!/bin/sh -eu

enable_completion() {
  ls "$1" > /dev/null
  ln -fs "$1" "$2"
}

brew bundle --no-lock
cp .vimrc .zshrc ~
defaults write com.apple.screencapture location ~/Downloads
git config --global core.quotepath false
git config --global url.git@github.com:.insteadOf https://github.com/
git config --global user.email "$1"
git config --global user.name migarashi

dst_path=~/.zsh/completion
src_path=/Applications/Docker.app/Contents/Resources/etc
mkdir -p $dst_path
enable_completion $src_path/docker-compose.zsh-completion $dst_path/_docker-compose
enable_completion $src_path/docker.zsh-completion $dst_path/_docker

echo done!
