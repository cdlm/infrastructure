call plug#begin("~/.vim/plugged")

"""
""" Libraries
"""

" support for repeating commands
Plug 'tpope/vim-repeat'

" snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" textobj-rubyblock
Plug 'kana/vim-textobj-user'

" easytags.vim
Plug 'xolox/vim-misc'

" unite.vim
Plug 'Shougo/neomru.vim'

"""
""" Behavior
"""

Plug 'tpope/vim-sensible'
" focus events within tmux
Plug 'sjl/vitality.vim'
Plug 'wincent/Command-T'
Plug 'Shougo/unite.vim'
Plug 'h1mesuke/unite-outline'
" numbered search matches
Plug 'henrik/vim-indexed-search'
" completion using <tab>
Plug 'ervandew/supertab'
" Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'nathanaelkane/vim-indent-guides'

"""
""" Appearance
"""

Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'edkolev/promptline.vim'

"""
""" Tools interaction
"""

" git
Plug 'tpope/vim-fugitive'
" github
Plug 'tpope/vim-rhubarb'

""" Editing

Plug 'junegunn/vim-easy-align'
" indent-aware paste: ]p
Plug 'sickill/vim-pasta'
" automatic delimiter pairs
Plug 'Raimondi/delimitMate'
" case substitutions: :S, cr{m,c,s,u}
Plug 'tpope/vim-abolish'
" extended character info: ga
Plug 'tpope/vim-characterize'
" commenting: gc…
Plug 'tpope/vim-commentary'
" automatic end keyword
Plug 'tpope/vim-endwise'
" buffer/file rename, move, sudo write…
Plug 'tpope/vim-eunuch'
" ERB-like tags, URL/entity encoding
Plug 'tpope/vim-ragtag'
" using/changing delimiter pairs
Plug 'tpope/vim-surround'
" quick buffer changes: [b …and options switches: [oi
Plug 'tpope/vim-unimpaired'

"""
""" Syntax & language support
"""

Plug 'vim-ruby/vim-ruby'
Plug 'sunaku/vim-ruby-minitest'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'postmodern/vim-yard'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-haml'

Plug 'dart-lang/dart-vim-plugin'
Plug 'groovy.vim'

Plug 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
Plug 'hallison/vim-markdown'
Plug 'vim-pandoc/vim-markdownfootnotes'
Plug 'vim-pandoc/vim-pantondoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"" problems with supertab… https://github.com/vim-pandoc/vim-pandoc-after/issues/1
" Plug 'vim-pandoc/vim-pandoc-after'
Plug 'cdlm/vim-pillar'
Plug 'tracwiki'

Plug 'rodjek/vim-puppet'
Plug 'jinfield/vim-nginx'

"" startup without huge delay http://github.com/skammer/vim-css-color/issues/3
Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'

Plug 'seebi/easychair.vim'
Plug 'chrisbra/csv.vim'
Plug 'ledger/vim-ledger'

call plug#end()

" " UI improvements
" Bundle 'Lokaltog/powerline'

" " Language modes

" " Editing
" Bundle 'matchit.zip'
" Bundle 'godlygeek/tabular'
" Bundle 'Align'
" Bundle 'garbas/vim-snipmate'
" Bundle 'honza/vim-snippets'
" Bundle 'rbonvall/snipmate-snippets-bib'
" Bundle 'tommcdo/vim-exchange'
" Bundle 'rhysd/clever-f.vim'

" " External tools
" Bundle 'xolox/vim-easytags'
" Bundle 'jpalardy/vim-slime'
" Bundle 'hallettj/jslint.vim'
" Bundle 'mileszs/ack.vim'
" Bundle 'int3/vim-extradite'
" Bundle 'mattn/gist-vim'
" Bundle 'DamienCassou/textlint'
