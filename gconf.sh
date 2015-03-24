# Set gnome terminal font
gconftool-2 --set /apps/gnome-terminal/profiles/Default/font --type string "M+ 1mn 11"

# Swap Esc and CapsLock
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

# Emacs-like keybindings
# gsettings set org.gnome.desktop.interface gtk-key-theme "Emacs"

# Used for Mac
defaults write org.vim.MacVim MMTextInsetTop '0'
defaults write org.vim.MacVim MMTextInsetLeft '0'
defaults write org.vim.MacVim MMTextInsetBottom '0'
defaults write org.vim.MacVim MMTextInsetRight '0'
