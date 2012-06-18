set nocompatible
filetype off " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

command! BundleUpdate BundleInstall!

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Libraries
"   snipmate:
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"   textobj-rubyblock:
Bundle 'kana/vim-textobj-user'

" UI improvements
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'henrik/vim-indexed-search'

" Bundle 'altercation/vim-colors-solarized'
Bundle 'cdlm/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'

" Language modes
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'hallison/vim-markdown'
Bundle 'vim-pandoc/vim-markdownfootnotes'
Bundle 'tracwiki'
Bundle 'skammer/vim-css-color'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sunaku/vim-ruby-minitest'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'postmodern/vim-yard'

" Editing
Bundle 'matchit.zip'
Bundle 'ervandew/supertab'
Bundle 'sickill/vim-pasta'
Bundle 'godlygeek/tabular'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'

" External tools
Bundle 'easytags.vim'
Bundle 'jpalardy/vim-slime'
Bundle 'hallettj/jslint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'DamienCassou/textlint'


filetype plugin indent on
