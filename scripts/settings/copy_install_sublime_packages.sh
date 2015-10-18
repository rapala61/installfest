#-------------------------------------------------------------------------------
# Copy and install Subl packages (settings/copy_install_sublime_packages.sh)
#-------------------------------------------------------------------------------

SUBLIME_DIR="${HOME}/Library/Application Support/Sublime Text 3"
SUBLIME_PACKAGES_DIR="${SUBLIME_DIR}/Installed Packages"

# ensure files exist before copying
mkdir -p "SUBLIME_PACKAGES_DIR"

inform "Copying Sublime packages..." true
copy_files subl_packages "$SUBLIME_PACKAGES_DIR" "$SCRIPT_SUBL_PACKAGES"
show "Complete!"

# TODO (pj) get Package Control up and running with settings, etc.
