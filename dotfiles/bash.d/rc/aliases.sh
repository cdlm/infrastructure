#export EDITOR="see -rw -j Shell"
export EDITOR="mate --wait"
export PAGER="less --ignore-case"
export CVS_RSH="ssh"
export SVKDIFF="svkopendiff"

alias smu='open -a Smultron'
alias skim='open -a Skim'
alias irb='irb -r irb/completion'
alias e='emacsclient -n'
alias nano='nano --nowrap'
alias snano='sudo nano --nowrap'

alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lh='ls -lh'
alias ls='ls -GF' # colors
alias mkdir='mkdir -p'
alias tree='tree -ACF'
alias top='top -d -o cpu -s 2'
alias pwgen='pwgen -s 10 1'

# file transfer like ssh but with rsync (--copy-dirlinks is maybe not that nice...)
alias rscp='rsync --rsh=ssh --verbose --human-readable --progress --archive --partial --copy-dirlinks'

# devel stuff
alias cvsstatus='cvs status | grep Status | grep -v "Up-to-date"'
alias diff='diff --unified --ignore-space-change'
alias diffc='colordiff --unified --ignore-space-change'

# LaTeX builders
alias rubber='rubber --pdf --force' # --into rubber-build
alias lmk='latexmk'
alias lmkc='latexmk -pvc'
lmkdefault() { echo "@default_files = ('$1');" >> latexmkrc; }
alias pdflatex='pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1'

alias I='ruby1.9 ~/.track_my_time.d/track_my_time.rb'
