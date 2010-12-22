if [ -d /opt/homebrew ]; then
   export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
   source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
   for f in `brew --prefix`/etc/bash_completion.d/*; do
      source $f
   done
   unset f
fi
