source "$DOTFILES_ROOT/dotfiles.sh"

# Symlink files to VS Code settings
echo "==> Symlinking VS Code settings..."

set_symlink "$DOTFILES_ROOT/vscode/settings.json" "$HOME/Library/Application\ Support/Code/User/settings.json"
set_symlink "$DOTFILES_ROOT/vscode/keybindings.json" "$HOME/Library/Application\ Support/Code/User/keybindings.json"
set_symlink "$DOTFILES_ROOT/vscode/snippets" "$HOME/Library/Application\ Support/Code/User/snippets"
