# tools implemented as shell functions
fpath=($Z/functions $fpath)
for function_file ($Z/functions/*)
   autoload -Uz ${function_file:t}
