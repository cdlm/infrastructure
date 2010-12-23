bp='/opt/homebrew' #`brew --prefix`

if [ -d $bp ]; then
   export PATH=$bp/bin:$bp/sbin:$PATH
   for f in $bp/etc/bash_completion $bp/Library/Contributions/brew_bash_completion.sh; do
      source $f
   done
fi

unset f bp
