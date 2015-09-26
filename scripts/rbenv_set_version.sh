rbenv global $BELOVED_RUBY_VERSION
rbenv rehash

# assert_that "Ruby version is now '${BELOVED_RUBY_VERSION}'" \
#             "ruby -v | grep -q ${BELOVED_RUBY_VERSION} && echo 'true'" "true"
