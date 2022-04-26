#!/usr/bin/env bash

set -e

export DOTFILES_HOME=$HOME/.dotfiles

info () {
  printf "\r\033[00;34mINFO\e[0m $1\n"
}

success () {
  printf "\r\033[2K\033[00;32mOK  \033[0m $1\n"
}

fail () {
  printf "\r\033[2K\033[0;31mFAIL\033[0m $1\n"
  echo ''
  exit
}

printf "\033[00;34mInitializing dotfiles\033[0m\n"
echo ""

# Install and set up homebrew and macOS defaults
if [ "$(uname -s)" == "Darwin" ]
then
    info "Installing homebrew"
    $DOTFILES_HOME/homebrew/install.sh 2>&1
    info "Setting up macOS defaults"
    $DOTFILES_HOME/macos/defaults.sh
fi

