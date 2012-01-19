set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" github repos
Bundle 'wincent/Command-T'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'hallettj/jslint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'hallison/vim-markdown'
Bundle 'vim-pandoc/vim-markdownfootnotes'
Bundle 'vim-ruby/vim-ruby'
Bundle 'postmodern/vim-yard'

" snipmate & deps
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'

" vim-scripts
Bundle 'easytags.vim'
Bundle 'matchit.zip'


filetype plugin indent on
