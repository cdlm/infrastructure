set linebreak
set iskeyword+=:
set conceallevel=2
let g:tex_conceal='adgms'

" from the vim-latex faq, preventing some mappings on the accent keys
imap <buffer> <leader>it <plug>Tex_InsertItemOnThisLine
imap <buffer> <C-k> <plug>IMAP_JumpBack

" these I just don't care about
imap <buffer> <plug>nil_1 <plug>Tex_MathBF
imap <buffer> <plug>nil_2 <plug>Tex_MathCal

