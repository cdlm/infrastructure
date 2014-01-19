" french quotes
let g:surround_{char2nr("»")} = "«\r»"
let g:surround_{char2nr("«")} = "« \r »"
let g:surround_{char2nr("›")} = "‹\r›"
let g:surround_{char2nr("‹")} = "‹ \r ›"

" LaTeX command
let g:surround_{char2nr("L")} = "\\\1command: \1{\r}"
