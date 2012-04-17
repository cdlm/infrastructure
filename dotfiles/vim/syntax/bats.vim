runtime syntax/sh.vim

syntax match TestName '"[^"]*"'
syntax match Test '@test' nextgroup=TestName skipWhite

highlight link Test Function
highlight link TestName Function
