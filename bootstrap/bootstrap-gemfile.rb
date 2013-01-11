# default gems to install in a scratch ruby install
# install with:
#   gem install bundler
#   bundle install --gemfile=bootstrap-gemfile.rb
source :rubygems

gem 'bundler' # this one needs to be done by hand…

# general utilities
gem 'jump'
gem 'gist'
gem 'terminal-notifier'

# ruby development
gem 'pry'
gem 'yard'

# writing
gem 'trex'
gem 'kramdown'

# vim: ft=ruby

