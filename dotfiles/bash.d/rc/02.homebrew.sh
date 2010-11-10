if [ -d /opt/homebrew ]; then
   export PATH=/opt/homebrew/bin:$PATH
   source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi
