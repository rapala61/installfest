#-------------------------------------------------------------------------------
# Copy over the terminal theme (mac/copy_terminal_theme.sh)
#-------------------------------------------------------------------------------

inform "Copying terminal theme to ~/Desktop..."

THEMES_DIR=($SETTINGS/terminal)
cp "$THEMES_DIR/Tomorrow Night.terminal" ~/Desktop
