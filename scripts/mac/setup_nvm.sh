# mac/setup_nvm.sh

# Remove any Node brew installation and any global npm modules from it
brew remove --force node
sudo rm -r /usr/local/lib/node_modules >/dev/null 2>&1
