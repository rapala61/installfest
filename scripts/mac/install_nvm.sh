# Remove any brew installation
brew remove --force node
sudo rm -r /usr/local/lib/node_modules

# install Node Version Manager
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
