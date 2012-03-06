fpath=(
   $Z/completions
   $Z/completions-zshusers
   $fpath)

require compinit solarized

zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' completer _complete _prefix _files

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:*:*:processes' command \
    "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:*:kill:*:processes' list-colors \
    '=(#b) #([0-9]#) ([0-9a-z-]#)*=38;12;6'

zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:(descriptions|messages)' format \
    "%{$BG[base02]$FG[base1]%}‣ %d %{$FX[reset]%}"
zstyle ':completion:*:warnings' format \
    "%{$BG[base02]$FG[base2]%}‣ no match: %d %{$FX[reset]%}"

zstyle ':completion:*:*:(latexmk|(|la|pdf|pdfla|xe|xela|lua|luala)tex):*' file-patterns \
    '*.(tex|latex|ltx|dtx|ins):tex-files:TeX\ source' \
    '%p:all-files:all\ other\ files'

zstyle ':completion:*:*:pharo:*' file-patterns \
    '*.image:smalltalk-images:Smalltalk\ images' \
    '%p:all-files:all\ other\ files'
