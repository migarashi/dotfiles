#!/bin/sh -eu

enable_completion() {
  ls "$1" > /dev/null
  ln -fs "$1" "$2"
}

defaults write com.apple.screencapture location ~/Downloads

dst_path=~/.zsh/completion
src_path=/Applications/Docker.app/Contents/Resources/etc
mkdir -p $dst_path
enable_completion $src_path/docker-compose.zsh-completion $dst_path/_docker-compose
enable_completion $src_path/docker.zsh-completion $dst_path/_docker

bash -c "$(curl -LSfs https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --no-lock

cp .gitconfig .vimrc .zshrc ~
git config --global user.email "$1"

tfenv install
tfenv use latest
terraform -install-autocomplete

echo done!
