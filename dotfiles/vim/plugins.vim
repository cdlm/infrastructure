let g:plug_threads = 8
call plug#begin("~/.vim/plugged")

"""
""" Libraries
"""

"" support for repeating commands
Plug 'tpope/vim-repeat'
"" vim organizer
Plug 'tpope/vim-speeddating'
"" snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"" easytags.vim
Plug 'xolox/vim-misc'
"" unite.vim
Plug 'Shougo/neomru.vim'
"" greper
Plug 'rizzatti/funcoo.vim'
"" FormatToWidth
Plug 'ingo-library'



"""
""" Behavior
"""

" Plug 'FredKSchott/CoVim'

Plug 'utl.vim'
Plug 'itchyny/calendar.vim'
Plug 'jceb/vim-orgmode'
Plug 'hsitz/VimOrganizer'
Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-sensible'
"" focus events within tmux
Plug 'sjl/vitality.vim'
" resize vertical splits to make the active one bigger
Plug 'justincampbell/vim-eighties'
"" spawn finder or terminal on current file: gof, got
Plug 'justinmk/vim-gtfo'
"" fuzzy finders
Plug 'wincent/Command-T'
Plug 'junegunn/fzf', { 'on': 'FZF' }
Plug 'Shougo/unite.vim'
Plug 'h1mesuke/unite-outline'
Plug 'rhysd/unite-ruby-require.vim'
"" numbered search matches
Plug 'henrik/vim-indexed-search'
" completion using <tab>
Plug 'ervandew/supertab'
"" Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/vimfiler.vim'
Plug 'tpope/vim-vinegar'
Plug 'nathanaelkane/vim-indent-guides'
"" trailing whitespace: :ToggleWhitespace
Plug 'ntpeters/vim-better-whitespace'



"""
""" Appearance
"""

Plug 'reedes/vim-thematic', { 'on': 'Thematic' }
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'



"""
""" Tools interaction
"""

"" git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'int3/vim-extradite', { 'on': 'Extradite' }
Plug 'rhysd/git-messenger.vim'
"" github issues omni-completion
Plug 'tpope/vim-rhubarb'

"" documentation in Dash.app
Plug 'Keithbsmiley/investigate.vim'
"" …but this one is slow to load
" Plug 'rizzatti/dash.vim'

"" grep, ack, ag
Plug 'rizzatti/greper.vim'

"" ctags
Plug 'surfer.vim', { 'on': 'Surf' }

"" syntax checking
Plug 'scrooloose/syntastic'



"""
""" Editing
"""

"" snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"" semantic selection
Plug 'kana/vim-textobj-user'
"" select nearest text object with <enter>
Plug 'gcmt/wildfire.vim'
Plug 'rhysd/vim-textobj-ruby'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-diff'
Plug 'kana/vim-textobj-line'
Plug 'jceb/vim-textobj-uri'
Plug 'rbonvall/vim-textobj-latex'
Plug 'rhysd/vim-textobj-word-column'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'

"" edition operators
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-operator-evalruby'

Plug 'terryma/vim-multiple-cursors'

"" text alignment
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'FormatToWidth'
"" find & replace
Plug 'junegunn/vim-fnr'
"" language-aware jumps to open/close: %
Plug 'matchit.zip'
"" exchanging text: cx{motion}
Plug 'tommcdo/vim-exchange'
"" easier repeating & undoing of jumps with fF/tT
Plug 'rhysd/clever-f.vim'
"" automatic delimiter pairs
Plug 'Raimondi/delimitMate'
"" indent-aware paste: ]p
Plug 'sickill/vim-pasta'
"" case substitutions: :S, cr{m,c,s,u}
Plug 'tpope/vim-abolish'
"" extended character info: ga
Plug 'tpope/vim-characterize'
"" commenting: gc…
Plug 'tpope/vim-commentary'
"" automatic end keyword
Plug 'tpope/vim-endwise'
"" buffer/file rename, move, sudo write…
Plug 'tpope/vim-eunuch'
"" ERB-like tags, URL/entity encoding
Plug 'tpope/vim-ragtag'
"" using/changing delimiter pairs
Plug 'tpope/vim-surround'
"" quick buffer changes: [b …and options switches: [oi
Plug 'tpope/vim-unimpaired'
"" easy moving text around
Plug 't9md/vim-textmanip'



"""
""" Syntax & language support
"""

Plug 'vim-ruby/vim-ruby'
Plug 'sunaku/vim-ruby-minitest'
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

" Plug 'rodjek/vim-puppet'
Plug 'ajf/puppet-vim'
Plug 't9md/vim-chef'
Plug 'jinfield/vim-nginx'
Plug 'httplog'

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
" Bundle 'godlygeek/tabular'
" Bundle 'Align'
" Bundle 'garbas/vim-snipmate'
" Bundle 'honza/vim-snippets'
" Bundle 'rbonvall/snipmate-snippets-bib'

" " External tools
" Bundle 'xolox/vim-easytags'
" Bundle 'jpalardy/vim-slime'
" Bundle 'hallettj/jslint.vim'
" Bundle 'mattn/gist-vim'
" Bundle 'DamienCassou/textlint'
