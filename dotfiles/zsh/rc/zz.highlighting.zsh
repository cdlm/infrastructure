zle_highlight=(isearch:standout)

source $Z/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ $COLORFGBG = *';15' ]]; then
    # solarized light
    ZSH_HIGHLIGHT_STYLES[default]='fg=green,bold' #base01
    ZSH_HIGHLIGHT_STYLES[alias]='fg=black'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[function]='fg=black'
    ZSH_HIGHLIGHT_STYLES[command]='fg=black'
    ZSH_HIGHLIGHT_STYLES[precommand]='fg=black'
    ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=cyan,bold' #base1
    ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=yellow,bold' #base00
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=yellow,bold' #base00
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=red,bold' #orange
else
    # solarized dark
    ZSH_HIGHLIGHT_STYLES[default]='fg=cyan,bold' #base1
    ZSH_HIGHLIGHT_STYLES[alias]='fg=white'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[function]='fg=white'
    ZSH_HIGHLIGHT_STYLES[command]='fg=white'
    ZSH_HIGHLIGHT_STYLES[precommand]='fg=white'
    ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=green,bold' #base01
    ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=blue,bold' #base0
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=blue,bold' #base0
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=red,bold' #orange
fi
