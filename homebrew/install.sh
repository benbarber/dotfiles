#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo ''
  echo '==> installing Homebrew...'

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Load homebrew after installing
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo ''
echo '==> update and install Homebrew packages...'
brew update
brew bundle install --file=$XDG_CONFIG_HOME/homebrew/Brewfile

echo ''
echo '==> cleanup, removing any Hombrew packages not specified in the bundle...'
brew bundle cleanup --force --file=$XDG_CONFIG_HOME/homebrew/Brewfile

exit 0

