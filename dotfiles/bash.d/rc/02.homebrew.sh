if [ -d /opt/homebrew ]; then
   export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
   source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi
