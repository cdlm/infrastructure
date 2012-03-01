set nocompatible
filetype off " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

command! BundleUpdate BundleInstall!

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" UI improvements
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'nathanaelkane/vim-indent-guides'

" Bundle 'altercation/vim-colors-solarized'
Bundle 'cdlm/vim-colors-solarized'

" Language modes
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'hallison/vim-markdown'
Bundle 'vim-pandoc/vim-markdownfootnotes'
Bundle 'skammer/vim-css-color'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'postmodern/vim-yard'

" Editing
Bundle 'matchit.zip'
Bundle 'ervandew/supertab'
Bundle 'sickill/vim-pasta'
Bundle 'godlygeek/tabular'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
" snipmate & deps
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'

" External tools
Bundle 'easytags.vim'
Bundle 'hallettj/jslint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'DamienCassou/textlint'


filetype plugin indent on
