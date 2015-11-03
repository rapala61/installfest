#-------------------------------------------------------------------------------
# Use Brew Cask to install application images (mac/homebrew_install_apps.sh)
#-------------------------------------------------------------------------------

inform "Installing Homebrew Cask, to handle Mac binaries (apps)..." true
# a CLI workflow for the administration of Mac applications
# distributed as binaries
brew tap phinze/homebrew-cask
brew install brew-cask

# load a tap of different versions of apps (for Sublime Text 3)
brew tap caskroom/versions
show "Complete!"

inform "Using Homebrew Cask to install apps..." true

# The Browser
brew cask install google-chrome
# brew cask install google-chrome-canary

# Another Important Browser
brew cask install firefox
# brew cask install firefox-nightly

# The Text Editor, Sublime Text 2
# (phlco) sublime text 3 is still in beta, therefore we'll stick to stable.
# (phlco) atom won't support files over 2mb therefore we'll hold off.
# brew cask install sublime-text
# PJ: fuck it, v3
brew cask install sublime-text3

# The atom text editor
brew cask install atom

# A Screenshot Sharing Tool
brew cask install mac2imgur

# The Window Manager
brew cask install spectacle

# Our Chat Client
brew cask install slack

# The X Window Server
brew cask install xquartz

# Flux, makes the color of your computer's display adapt to the time of day
# brew cask install flux

# An Alternative Terminal
# brew cask install iterm2

show "Complete!"
