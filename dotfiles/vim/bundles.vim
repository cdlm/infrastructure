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
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'

" vim-scripts
Bundle 'easytags.vim'
Bundle 'Markdown'


filetype plugin indent on
