# Setup global gitconfig
if ! [ -f "$DOTFILES_ROOT/git/gitconfig.local.symlink" ]
then
  echo '==> Setup Git Configuration'

  git_credential='cache'
  if [ "$(uname -s)" == "Darwin" ]
  then
    git_credential='osxkeychain'
  fi

  echo '> What is your github author name?'
  read -e git_authorname
  echo '> What is your github author email?'
  read -e git_authoremail

  sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" "$DOTFILES_ROOT/git/gitconfig.local.symlink.example" > "$DOTFILES_ROOT/git/gitconfig.local.symlink"

  echo '==> Git Configuration Saved'
fi
