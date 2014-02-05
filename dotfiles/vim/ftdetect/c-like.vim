" set the statement delimiter for a few languages where it's nice to have
" no bang for autocmd here, else it overrides the filetype detection handler
autocmd BufRead,BufNewFile *.h,*.c,*.java  let b:statementDelimiter=';'
