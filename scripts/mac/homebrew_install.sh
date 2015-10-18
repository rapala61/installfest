#-------------------------------------------------------------------------------
# Install Homebrew (mac/homebrew_install.sh)
#-------------------------------------------------------------------------------

allow_group() {
  local GROUP_NAME="$1"
  local TARGET_DIR="$2"
  local PERMISSIONS="read,write,delete,add_file,add_subdirectory"
  local INHERITANCE="file_inherit,directory_inherit"

  sudo mkdir -p "$TARGET_DIR"
  sudo /bin/chmod -R -N "$TARGET_DIR"
  sudo /bin/chmod -R +a "group:$GROUP_NAME:allow $PERMISSIONS,$INHERITANCE" "$TARGET_DIR"
}

inform "Installing the Homebrew package manager..." true

# Set up permissions for /usr/local to anyone in admin group!
echo "Setting ACL permissions of the Homebrew directory..."
allow_group admin /usr/local
show "Complete!"

# Set up permissions for /Library/Caches/Homebrew to anyone in admin group!
echo "Setting ACL permissions of the Homebrew library cache..."
allow_group admin /Library/Caches/Homebrew
show "Complete!"

# Installs Homebrew, our package manager
# http://brew.sh/
$(which -s brew)
if [[ $? != 0 ]]; then
  echo "Loading Homebrew installation script..."
  # piping echo to simulate hitting return in the brew install script
  echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  show "Complete!"
else
  show "Homebrew is already installed!"
fi

inform "Updating Homebrew and formulae..." true
brew update # Make sure we're using the latest Homebrew
brew upgrade # Upgrade any already-installed formulae
show "Complete!"

inform "Adding Homebrew taps..." true
# These formulae duplicate software provided by OS X
# though may provide more recent or bugfix versions, and
# extra versions (other than default) of certain packages.
brew tap homebrew/dupes
brew tap homebrew/versions # necessary for specific versions of libs

# Ensures all tapped formula are symlinked into Library/Formula
# and prunes dead formula from Library/Formula.
brew tap --repair

# Remove outdated versions from the cellar
brew cleanup
show "Complete!"
