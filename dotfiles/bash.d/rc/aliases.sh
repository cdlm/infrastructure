#export EDITOR="see -rw -j Shell"
export EDITOR="mate --wait"
export PAGER="less --ignore-case"
export CVS_RSH="ssh"
export SVKDIFF="svkopendiff"

alias smu='open -a Smultron'
alias skim='open -a Skim'
alias irb='irb -r irb/completion'
alias e='emacsclient --no-wait'
alias et='emacs --no-window-system'
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
alias rscp='rsync --rsh="ssh -o ClearAllForwardings=yes" --verbose --human-readable --progress --archive --partial --copy-dirlinks'

# devel stuff
alias cvsstatus='cvs status | grep Status | grep -v "Up-to-date"'
alias diff='diff --unified --ignore-space-change'
alias diffc='colordiff --unified --ignore-space-change'

# LaTeX builders
alias lmk='latexmk'
alias lmkc='latexmk -pvc'
lmkdefault() { # Set or append to the list of documents built by latexmk
   local usage='Usage:  lmkdefault [-l] [[-a] file(s)]'
   local mode="@default_files = (";
   
   local params=`getopt ha $*`
   [ $? != 0 -o $# == 0 ] && { echo $usage; return; }
   
   set -- ${params/#*--}
   for o in ${params/%--*}; do
      case $o in
      -h)  echo $usage;;
      -a)  mode="push @default_files, (";;
      esac
   done
   if [ $# -gt 0 ]; then
      echo -n "$mode '$1'" >> latexmkrc
      shift
      for param; do
         echo -n ", '$param'" >> latexmkrc
      done
      echo " );" >> latexmkrc
   fi
}

alias pdflatex='pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1'
