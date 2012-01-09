set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" github repos
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'hallettj/jslint.vim'
Bundle 'hallison/vim-markdown'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'postmodern/vim-yard'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'vim-pandoc/vim-markdownfootnotes'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'

" snipmate & deps
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

" vim-scripts
Bundle 'easytags.vim'
Bundle 'matchit.zip'


filetype plugin indent on
