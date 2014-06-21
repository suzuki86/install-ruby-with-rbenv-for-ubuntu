#!/bin/sh

# Install libssl
sudo apt-get install libssl-dev

# Install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Install ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install ruby
rbenv install 2.1.2
rbenv rehash
rbenv global 2.1.2

