# our ruby version manager
sudo apt-get -y install rbenv
# git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
# provides an `rbenv install` command
sudo apt-get -y install ruby-build

# ruby_check=$(rbenv versions | grep $BELOVED_RUBY_VERSION)
#
# if [[ "$ruby_check" == *$BELOVED_RUBY_VERSION* ]]; then
#   echo "$BELOVED_RUBY_VERSION is installed"
# else
#   rbenv install $BELOVED_RUBY_VERSION
# fi
