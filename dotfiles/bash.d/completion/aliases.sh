alias g='git'
if [[ `type -t _git` == 'function' ]]; then
   complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
      || complete -o default -o nospace -F _git g
fi
