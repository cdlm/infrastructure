# default gems to install in a scratch ruby install
# install with:
#   gem install bundler
#   bundle install --gemfile=bootstrap-gemfile.rb
source :rubygems

gem 'bundler' # this one needs to be done by hand…

# ruby development
gem 'yard'
gem 'pry'
gem 'rake'

# general utilities
gem 'jump'
gem 'gist'
gem 'terminal-notifier'

# writing
gem 'trex'
gem 'kramdown'

# vim: ft=ruby

