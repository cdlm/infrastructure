if [ -n `which rlwrap` ]; then
  export RLWRAP_HOME=~/.rlwrap.d
  mkdir -p $RLWRAP_HOME
  
  alias ocaml='rlwrap -p"1;34" -r ocaml'

fi
