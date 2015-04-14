# NVM dependencies
sudo apt-get install build-essential libssl-dev

git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

source ~/.nvm/nvm.sh
