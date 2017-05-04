# Install any available updates from the Mac AppStore
echo "==> Installing updates from Mac AppStore..."
sudo softwareupdate -i -a

# Set any system preferences
echo "==> Setting MacOS preferences..."
exec "$DOTFILES_ROOT/macos/preferences.sh"
