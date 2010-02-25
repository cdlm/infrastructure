# That one seems useless since gem does the right thing when run without sudo.
# Also, the default layout separates 1.8 and 1.9 while setting GEM_HOME doesn't.
#export GEM_HOME=$HOME/.gem

export RUBYOPT=rubygems
export PATH=$HOME/.gem/ruby/1.9.1/bin:$HOME/.gem/ruby/1.8/bin:$PATH
