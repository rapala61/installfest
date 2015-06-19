# load nvm command
source ~/.nvm/nvm.sh

# Install latest version of Node
nvm install stable

# Install iojs
nvm install iojs-v1.6.2

# Use iojs
# (phlco) could set this with ~/.nvmrc
nvm use iojs-v1.6.2

# Ensure we have the most recent version of npm
npm install npm -g
