# a CLI workflow for the administration of Mac applications
# distributed as binaries
brew tap phinze/homebrew-cask
brew install brew-cask

# The Browser
brew cask install google-chrome
brew cask install google-chrome-canary

# A Browser
brew cask install firefox
brew cask install firefox-nightly

# The Text Editor, Sublime Text 2
# (phlco) sublime text 3 is still in beta, therefore we'll stick to stable.
# (phlco) atom won't support files over 2mb therefore we'll hold off.
brew cask install sublime-text

# Flux, makes the color of your computer's display adapt to the time of day
# brew cask install flux

# Alternative Terminal
# brew cask install iterm2

# for fonts
# https://github.com/caskroom/homebrew-fonts/tree/master/Casks
# brew tap caskroom/fonts
#
# brew cask install font-source-code-pro
# brew cask install font-source-sans-pro
# brew cask install font-inconsolata

# Git extensions to provide high-level repository operations
# brew install git-flow
if [[ $os_version == *10.6** ]]; then
  # spectacle
  curl -OL https://s3.amazonaws.com/spectacle/downloads/Spectacle+0.7.zip
  unzip Spectacle+0.7.zip
  mv Spectacle.app/ /Applications
  rm Spectacle+0.7.zip

  echo "Slack requires 10.7 or higher. Please bookmark and use the browser version."

 else
  # The Window Manager
  brew cask install spectacle
  # allow_control Spectacle NOTE (phlco) just set up by hand?

  # Our class chat client
  brew cask install slack

  # The X Window Server
  brew cask install xquartz
fi
