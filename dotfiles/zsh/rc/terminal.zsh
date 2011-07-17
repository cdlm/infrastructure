export HISTSIZE=5000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE

setopt share_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt append_history
setopt inc_append_history

export LSCOLORS='exgxdadacxfafaAcAcAeex'
export GREP_OPTIONS='--color=auto'

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
