#-------------------------------------------------------------------------------
# Install Homebrew (mac/homebrew_install.sh)
#-------------------------------------------------------------------------------

inform "Installing the Homebrew package manager..." true

# Set up ownership for /usr/local to anyone with admin permissions!
echo "Setting ownership of the Homebrew directory..."
sudo mkdir -p /usr/local
sudo chgrp -R admin /usr/local
sudo chmod -R g+w /usr/local
show "Complete!"

# Installs Homebrew, our package manager
# http://brew.sh/
$(which -s brew)
if [[ $? != 0 ]]; then
  echo "Loading Homebrew installation script..."
  # piping echo to simulate hitting return in the brew install script
  echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  show "Homebrew is already installed!"
fi

# Set up ownership for /usr/local to anyone with admin permissions!
echo "Setting ownership of the Homebrew library..."
mkdir -p /Library/Caches/Homebrew
sudo chgrp -R admin /Library/Caches/Homebrew
sudo chmod -R g+w /Library/Caches/Homebrew
show "Complete!"


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
