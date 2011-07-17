typeset -U path fpath manpath
export -TU INFOPATH infopath

path+=(
   /Developer/usr/bin
   /Developer/Tools
)

local bp='/opt/homebrew' #`brew --prefix`
if [ -d $bp ]; then
   path+=(
      $bp/sbin
      $bp/bin
      $bp/share/python
   )
fi

path+=$HOME/bin

