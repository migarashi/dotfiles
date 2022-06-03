#!/bin/sh -eu

cp .gitconfig ~
git config --global user.email "$1"
