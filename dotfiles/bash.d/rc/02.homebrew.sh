bp='/opt/homebrew' #`brew --prefix`

if [ -d $bp ]; then
   pathmunge PATH $bp/bin
   pathmunge PATH $bp/sbin
   for f in $bp/etc/bash_completion $bp/Library/Contributions/brew_bash_completion.sh; do
      [ -f $f ] && source $f
   done
fi

unset f bp
