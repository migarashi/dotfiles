#!/bin/sh -u

shellcheck ./*.sh .zshrc
shfmt -bn -ci -i 2 -sr -w ./*.sh .zshrc
zsh -n .zshrc
