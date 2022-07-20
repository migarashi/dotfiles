#!/bin/sh -u

shellcheck ./*.sh .zshrc
shfmt -bn -ci -i 2 -sr -w ./*.sh .zshrc
zsh -n .zshrc

if [ "$(git shortlog -ces --group=author | wc -l)" -ne 2 ] \
  || [ "$(git log --pretty=format:%s | sort | uniq | wc -l)" -ne 2 ]; then
  echo wrong commit. >&2
  exit 1
fi
