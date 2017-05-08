source "$DOTFILES_ROOT/dotfiles.sh"

# Set iTerm2 to use our preferences stored in ./com.googlecode.iterm2.plist
echo '==> Setting iTerm2 preferences'

# Set iTerm2 to load the preferences from a custom folder
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# Set the location of the perferences folder to the dotfiles iterm2 directory
defaults write com.googlecode.iterm2 PrefsCustomFolder "$DOTFILES_ROOT/iterm2"
