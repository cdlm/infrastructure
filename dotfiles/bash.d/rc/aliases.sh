#export EDITOR="see -rw -j Shell"
export EDITOR="mate -w"
export PAGER="less -i"
export CVS_RSH="ssh"
export CVS_EDITOR="see -rw -j CVS"
export SVKDIFF="svkopendiff"

alias smu='open -a Smultron'
alias skim='open -a Skim'
alias irb='irb -r irb/completion'
alias e='emacsclient -n'

alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls -GF' # colors
alias top='top -do cpu'
alias tree='tree -ACF'
alias nano='nano -w'
alias rubber='rubber --pdf --force' # --into rubber-build
alias snano='sudo nano -w'
alias cvsstatus='cvs status | grep Status | grep -v "Up-to-date"'
alias pdflatex='pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1' 
