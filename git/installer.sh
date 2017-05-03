#!/usr/bin/env bash
# Setup global gitconfig

if ! [ -f "$DOTFILES_ROOT/git/gitconfig.local.symlink" ]
then
  echo '==> setup gitconfig'

  git_credential='cache'
  if [ "$(uname -s)" == "Darwin" ]
  then
    git_credential='osxkeychain'
  fi

  echo ' - What is your github author name?'
  read git_authorname
  echo ' - What is your github author email?'
  read git_authoremail

  sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" "$DOTFILES_ROOT/git/gitconfig.local.symlink.example" > "$DOTFILES_ROOT/git/gitconfig.local.symlink"
fi
