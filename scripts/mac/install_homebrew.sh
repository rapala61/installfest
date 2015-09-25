#-------------------------------------------------------------------------------
# Install Homebrew (mac/install_homebrew.sh)
#-------------------------------------------------------------------------------

# Set up ownership for /usr/local to anyone with admin permissions!
sudo mkdir -p /usr/local
sudo chgrp -R admin /usr/local
sudo chmod -R g+w /usr/local

# Installs Homebrew, our package manager
# http://brew.sh/

$(which -s brew)
if [[ $? != 0 ]]; then
  echo 'Installing Homebrew...'
  # piping echo to simulate hitting return in the brew install script
  echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Set up ownership for /usr/local to anyone with admin permissions!
mkdir -p /Library/Caches/Homebrew
sudo chgrp -R admin /Library/Caches/Homebrew
sudo chmod -R g+w /Library/Caches/Homebrew

# Make sure we're using the latest Homebrew
brew update
