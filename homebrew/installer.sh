# Install Homebrew and Brewfile packages
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
  brew bundle --file="$DOTFILES_ROOT/homebrew/Brewfile"
else
  echo "==> Updating Homebrew..."
  brew update

  echo "==> Updating Brewfile Packages..."
  brew bundle --file="$DOTFILES_ROOT/homebrew/Brewfile"
fi
