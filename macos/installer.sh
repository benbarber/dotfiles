source "$DOTFILES_ROOT/dotfiles.sh"

# Install any available updates from the Mac AppStore
echo "==> Checking for updates from the Mac AppStore..."
sudo softwareupdate -i -a

# Set any system preferences
echo "==> Setting MacOS preferences..."
exec "$DOTFILES_ROOT/macos/preferences.sh"
