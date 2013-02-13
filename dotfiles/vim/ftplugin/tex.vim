set linebreak
set iskeyword+=:
set conceallevel=2
let g:tex_conceal='adgms'

" from the vim-latex faq, preventing some mappings on the accent keys:
" http://vim-latex.sourceforge.net/index.php?subject=faq&title=FAQ#faq-e-acute
" (however this seems uneffective… therefore I'm explicitly removing it in
" after/)
imap <buffer> <D-I> <Plug>Tex_InsertItemOnThisLine

" this one should be before plugin/imaps.vim (http://vim-latex.sourceforge.net/documentation/latex-suite/latex-suite-maps.html#customize-imap-maps)
" imap <buffer> <C-k> <plug>IMAP_JumpBack

" these I just don't care about
imap <buffer> <plug>nil_1 <plug>Tex_MathBF
imap <buffer> <plug>nil_2 <plug>Tex_MathCal

