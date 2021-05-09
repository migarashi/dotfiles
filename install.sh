#!/bin/sh
set -eux

ln -fs $(pwd)/_vimrc ~/.vimrc
ln -fs $(pwd)/_zshrc ~/.zshrc

cp _gitconfig ~/.gitconfig
git config --global user.email $1

mkdir -p ~/.zsh/completion && cd $_
curl -LO https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker
curl -LO https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose

cd ..
curl -LO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

defaults write com.apple.screencapture location ~/Downloads
