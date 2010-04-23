" Vim color file
" Maintainer:   Jani Nurminen <jani.nurminen@intellitel.com>
" Last Change:	2006/08/25 by Kurt H Maier <karmaflux@gmail.com> 
" URL:		Not yet...
" License:      GPL
"
" Nothing too fancy, just some alien fruit salad to keep you in the zone.
" This syntax file was designed to be used with dark environments and 
" low light situations. Of course, if it works during a daybright office, go
" ahead :)
"
" Owes heavily to other Vim color files! With special mentions
" to "BlackDust", "Camo" and "Desert".
"
" True-to-GUI cterm colors added by Kurt.
"
" To install, copy to ~/.vim/colors directory. Then :colorscheme zenburn.  
" See also :help syntax
"
" CONFIGURABLE PARAMETERS:
" 
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenlook colours.
"
" * To get more contrast to the Visual selection, use
"   
"      let g:zenburn_alternate_Visual = 1
" 
" * To use alternate colouring for Error message, use
"     
"      let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orang.e To use the original
"   colouring for Include, use
"     
"      let g:zenburn_alternate_Include = 1
"
" * To turn the parameter(s) back to defaults, use unlet.
"
" That's it, enjoy!
" 
" TODO
"   - IME colouring (CursorIM)
"   - obscure syntax groups: check and colourize
"   - add more groups if necessary

set background=dark
hi clear          
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="zenburn"

hi Boolean         ctermfg=181 guifg=#dca3a3
hi Character       ctermfg=181 guifg=#dca3a3 cterm=bold gui=bold
hi Comment         ctermfg=108 guifg=#7f9f7f
hi Conditional     ctermfg=223 guifg=#f0dfaf cterm=bold gui=bold
hi Constant        ctermfg=181 guifg=#dca3a3 cterm=bold gui=bold
hi Cursor          ctermfg=233 guifg=#000d18 ctermbg=109 guibg=#8faf9f cterm=bold gui=bold
hi Debug           ctermfg=181 guifg=#dca3a3 cterm=bold gui=bold
hi Define          ctermfg=223 guifg=#ffcfaf cterm=bold gui=bold
hi Delimiter       ctermfg=245 guifg=#8f8f8f
hi DiffAdd         ctermfg=66  guifg=#709080 ctermbg=237 guibg=#313c36 cterm=bold gui=bold
hi DiffChange      ctermbg=236 guibg=#333333
hi DiffDelete      ctermfg=236 guifg=#333333 ctermbg=238 guibg=#464646
hi DiffText        ctermfg=217 guifg=#ecbcbc ctermbg=237 guibg=#41363c cterm=bold gui=bold
hi Directory       ctermfg=188 guifg=#dcdccc cterm=bold gui=bold
hi ErrorMsg        ctermfg=72  guifg=#60b48a ctermbg=237 guibg=#3f3f3f cterm=bold gui=bold
hi Exception       ctermfg=249 guifg=#c3bf9f cterm=bold gui=bold
hi Float           ctermfg=251 guifg=#c0bed1
hi FoldColumn      ctermfg=109 guifg=#93b3a3 ctermbg=238 guibg=#3f4040
hi Folded          ctermfg=109 guifg=#93b3a3 ctermbg=238 guibg=#3f4040
hi Function        ctermfg=228 guifg=#efef8f
hi Identifier      ctermfg=223 guifg=#efdcbc
hi IncSearch       ctermbg=228 guibg=#f8f893 ctermfg=238 guifg=#385f38
hi Keyword         ctermfg=223 guifg=#f0dfaf cterm=bold gui=bold
hi Label           ctermfg=187 guifg=#dfcfaf gui=underline
hi LineNr          ctermfg=245 guifg=#7f8f8f ctermbg=238 guibg=#464646
hi Macro           ctermfg=223 guifg=#ffcfaf cterm=bold gui=bold
hi ModeMsg         ctermfg=223 guifg=#ffcfaf gui=none
hi MoreMsg         ctermfg=15  guifg=#ffffff cterm=bold gui=bold
hi NonText         ctermfg=238 guifg=#404040
hi Normal          ctermfg=188 guifg=#dcdccc ctermbg=Black guibg=#3f3f3f
hi Number          ctermfg=116 guifg=#8cd0d3
hi Operator        ctermfg=230 guifg=#f0efd0
hi PreCondit       ctermfg=180 guifg=#dfaf8f cterm=bold gui=bold
hi PreProc         ctermfg=223 guifg=#ffcfaf cterm=bold gui=bold
hi Question        ctermfg=15  guifg=#ffffff cterm=bold gui=bold
hi Repeat          ctermfg=223 guifg=#ffd7a7 cterm=bold gui=bold
hi Search          ctermfg=230 guifg=#ffffe0 ctermbg=238 guibg=#385f38
hi SpecialChar     ctermfg=181 guifg=#dca3a3 cterm=bold gui=bold
hi SpecialComment  ctermfg=108 guifg=#82a282 cterm=bold gui=bold
hi Special         ctermfg=181 guifg=#cfbfaf
hi SpecialKey      ctermfg=151 guifg=#9ece9e
hi Statement       ctermfg=187 guifg=#e3ceab ctermbg=237 guibg=#3f3f3f gui=none
hi StatusLine      ctermfg=234 guifg=#1e2320 ctermbg=144 guibg=#acbc90
hi StatusLineNC    ctermfg=236 guifg=#2e3330 ctermbg=108 guibg=#88b090
hi StorageClass    ctermfg=249 guifg=#c3bf9f cterm=bold gui=bold
hi String          ctermfg=174 guifg=#cc9393
hi Structure       ctermfg=229 guifg=#efefaf cterm=bold gui=bold
hi Tag             ctermfg=181 guifg=#dca3a3 cterm=bold gui=bold
hi Title           ctermfg=7   guifg=#efefef ctermbg=237 guibg=#3f3f3f cterm=bold gui=bold
hi Todo            ctermfg=108 guifg=#7faf8f ctermbg=237 guibg=#3f3f3f cterm=bold gui=bold
hi Typedef         ctermfg=253 guifg=#dfe4cf cterm=bold gui=bold
hi Type            ctermfg=187 guifg=#dfdfbf cterm=bold gui=bold
hi Underlined      ctermfg=188 guifg=#dcdccc ctermbg=237 guibg=#3f3f3f gui=underline
hi VertSplit       ctermfg=236 guifg=#303030 ctermbg=65  guibg=#688060
hi VisualNOS       ctermfg=15  guifg=#333333 ctermbg=210 guibg=#f18c96 cterm=bold gui=bold,underline
hi WarningMsg      ctermfg=236 guifg=#ffffff ctermbg=236 guibg=#333333 cterm=bold gui=bold
hi WildMenu        ctermbg=236 guibg=#2c302d ctermfg=236 guifg=#cbecd0 gui=underline

if exists("g:zenburn_alternate_Visual")
    " Visual with more contrast, thanks to Steve Hall & Cream posse
    hi Visual          ctermfg=0    guifg=#000000 ctermbg=79  guibg=#71d3b4
else
    " use default visual
    hi Visual          ctermfg=235  guifg=#233323 ctermbg=79  guibg=#71d3b4
endif

if exists("g:zenburn_alternate_Error")
    " use a bit different Error
    hi Error           ctermfg=217  guifg=#ef9f9f ctermbg=233  guibg=#201010 cterm=bold gui=bold  
else
    " default
    hi Error           ctermfg=167  guifg=#e37170 ctermbg=235  guibg=#332323 gui=none
endif

if exists("g:zenburn_alternate_Include")
    " original setting
    hi Include         ctermfg=223  guifg=#ffcfaf cterm=bold gui=bold
else
    " new, less contrasted one
    hi Include         ctermfg=180  guifg=#dfaf8f cterm=bold gui=bold
endif
    " TODO check every syntax group that they're ok
