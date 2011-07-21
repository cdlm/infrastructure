export HISTSIZE=5000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE

# history options
setopt share_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt append_history
setopt inc_append_history
setopt hist_reduce_blanks

# completion setup
setopt auto_list
setopt auto_menu
setopt list_packed
setopt bang_hist
setopt no_hash_list_all

# ls colors, assuming gnu coreutils from homebrew
if command which -s gdircolors; then
    [[ -f ~/.dircolors ]] && eval `gdircolors ~/.dircolors`
fi
export LSCOLORS='exgxdadacxfafaAcAcAeex'
export GREP_OPTIONS='--color=auto'

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char

## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
