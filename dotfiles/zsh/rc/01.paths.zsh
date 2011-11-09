typeset -U path fpath manpath
export -TU INFOPATH infopath

path=(
   /Developer/usr/bin
   /Developer/Tools
   $path)

local bp='/opt/homebrew' #`brew --prefix`
if [ -d $bp ]; then
   path=(
      $bp/sbin
      $bp/bin
      $bp/share/python
      $path)
fi

local hs="$HOME/.cabal" # haskell cabal
if [ -d $hs ]; then
    path=($hs/bin $path)
    manpath=($hs/share/man $manpath)
fi

path=($HOME/bin $path)

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

