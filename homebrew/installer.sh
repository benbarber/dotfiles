#!/usr/bin/env bash
# Install Homebrew and Brewfile packages

BREWFILE_PATH = "$DOTFILES_ROOT/homebrew/Brewfile"

if test ! $(which brew)
then
  echo "==> Installing Homebrew..."

  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

  echo "==> Installing Brewfile Packages..."
  brew bundle $BREWFILE_PATH
else
  echo "==> Updating Homebrew..."
  brew update

  echo "==> Updating Brewfile Packages..."
  brew bundle $BREWFILE_PATH
fi
