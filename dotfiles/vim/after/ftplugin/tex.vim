" Remove stupid vim-latex mappings
" http://vim-latex.sourceforge.net/index.php?subject=faq&title=FAQ#faq-e-acute
" http://tex.stackexchange.com/questions/62134/how-to-disable-all-vim-latex-mappings

iunmap <buffer> <M-i>

call IMAP('==', '==', 'tex')
