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
"   easytags.vim
Bundle 'xolox/vim-misc'

" UI improvements
Bundle 'sjl/vitality.vim'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/powerline'
Bundle 'airblade/vim-gitgutter'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'henrik/vim-indexed-search'
"   does not work, too bad
" Bundle 'dsummersl/vim-sluice'
"   approximate GUI colors in terminal
" Bundle 'CSapprox'

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
Bundle 'seebi/easychair.vim'
Bundle 'jinfield/vim-nginx'
Bundle 'dart-lang/dart-vim-plugin'
Bundle 'chrisbra/csv.vim'
Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'

" Editing
Bundle 'matchit.zip'
Bundle 'ervandew/supertab'
Bundle 'sickill/vim-pasta'
Bundle 'godlygeek/tabular'
Bundle 'Align'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'

" External tools
Bundle 'xolox/vim-easytags'
Bundle 'jpalardy/vim-slime'
Bundle 'hallettj/jslint.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'int3/vim-extradite'
Bundle 'mattn/gist-vim'
Bundle 'DamienCassou/textlint'


filetype plugin indent on
