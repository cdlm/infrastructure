# export EDITOR="mate --wait"
export EDITOR=vim
if has_command vimpager; then
   export PAGER="vimpager"
   alias less=$PAGER
else
   export PAGER="less --ignore-case"
fi

alias imageoptim="open -g -a ImageOptim"
alias skim='open -a Skim'
alias rbrh='rbenv rehash'
alias nano='nano --nowrap'
alias snano='sudo nano --nowrap'
alias ec='emacsclient --no-wait --alternate-editor=emacs-app'
alias et='emacsclient --tty --alternate-editor=emacs'
function e() {
   if [ $# == 0 ]; then
      [ -f main.tex ] && ec main.tex
   else
      ec "$*"
   fi
}

alias -s image=pharo
alias -s pdf=skim
alias -s {txt,md,mdown,markdown}=vim

source `jump-bin --zsh-integration` && {
    alias j='jump'
    alias ja='jump --add'
    alias jl='jump --list'
    alias bmk='jump'
}

# time tracking tool: gem install trak
has_command trak && {
    alias t='trak'
    for time in 15 30 45; do alias ${time}min="trak ${time}min"; done
    alias 1h='trak 1h'
}

setopt auto_pushd
setopt pushd_ignore_dups
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'
function mcd() { mkdir -p "$1" && cd "$1"; }

case `uname` in
    Darwin)
        if has_command gls; then
            alias ls='gls --classify --color=auto'
        else # use BSD ls from OS X
            alias ls='ls -GF'
        fi ;;
    Linux)
        alias ls='ls --classify --color=auto' ;;
esac
alias l='ls'
alias la='ls -A'
alias lh='ls -lh'
alias ll='lh'
alias lla='ll -A'
alias lll='ls -la'
alias mkdir='mkdir -p'
alias tree='tree -ACF'
alias top='top -d -o cpu -s 2'
alias pwgen='pwgen -s 10 1'
alias wtf='wtf -f ~/.acronyms'

# file transfer like ssh but with rsync (--copy-dirlinks is maybe not that nice...)
alias rscp='rsync --rsh="ssh -o ClearAllForwardings=yes" --verbose --human-readable --progress --archive --partial --copy-dirlinks'

# zsh niceties
autoload -Uz zmv
alias zcp='zmv -C'
alias zln='zmv -L'
alias mmv='noglob zmv -W'
alias ccp='noglob zcp -W'
alias lln='noglob zln -W'

alias rehash='hash -rf'

alias fu='sudo $(fc -ln -1)'

# devel stuff
alias g=git && compdef g=git
function g/() { cd $(git root); }
has_command hub && function git(){ hub "$@" }

alias diff='diff --unified --ignore-space-change'
alias diffc='colordiff --unified --ignore-space-change'
alias cvsstatus='cvs status | grep Status | grep -v "Up-to-date"'

# LaTeX builders
alias lmk='latexmk'
alias lmkc='latexmk -pvc'
alias pdflatex='pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1'
