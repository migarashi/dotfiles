#!/bin/sh -eu

enable_completion() {
  ls "$1" > /dev/null
  ln -fs "$1" "$(brew --prefix)"/share/zsh-completions/"$2"
}

defaults write com.apple.screencapture location ~/Downloads

cp .gitconfig .vimrc .zshrc ~
git config --global user.email "$1"

bash -c "$(curl -LSfs https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --no-lock

tfenv install
tfenv use latest
terraform -install-autocomplete

path=/Applications/Docker.app/Contents/Resources/etc
enable_completion $path/docker-compose.zsh-completion _docker-compose
enable_completion $path/docker.zsh-completion _docker

echo done!
