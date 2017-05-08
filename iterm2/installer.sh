source "$DOTFILES_ROOT/dotfiles.sh"

dst="$HOME/Library/Preferences/com.googlecode.iterm2.plist"

# Symlink iTerm2 config back to our config file
echo '==> Symlinking iTerm2 preferences'
set_symlink "$DOTFILES_ROOT/iterm2/com.googlecode.iterm2.plist" "$dst"
