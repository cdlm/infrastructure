export EDITOR="mate --wait"
if command which -s vimpager; then
   export PAGER="vimpager"
   alias less=$PAGER
else
   export PAGER="less --ignore-case"
fi

alias imageoptim="open -g -a ImageOptim"
alias skim='open -a Skim'
alias irb='irb -r irb/completion'
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

alias j='jump'
alias ja='jump --add'
alias jl='jump --list'
alias bmk='jump'

setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups
alias -- -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'
function mcd() { mkdir -p "$1" && cd "$1"; }

alias ls='ls -GF' # colors
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lh='ls -lh'
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

# devel stuff
alias g=git && compdef g=git
command which -s hub && function git(){ hub "$@" }
alias diff='diff --unified --ignore-space-change'
alias diffc='colordiff --unified --ignore-space-change'
alias cvsstatus='cvs status | grep Status | grep -v "Up-to-date"'

# LaTeX builders
alias lmk='latexmk'
alias lmkc='latexmk -pvc'
alias pdflatex='pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1'
