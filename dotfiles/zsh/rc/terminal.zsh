export LC_ALL=en_US.UTF-8
export LC_CTERM=en_US.UTF-8

export HISTSIZE=5000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE

export REPORTTIME=10
export TIMEFMT="$FG[base02]‣ %J:  cpu %P  real %E  user %U  system %S$FX[reset]"

# history options
# setopt share_history
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

setopt correct

# ls colors, assuming gnu coreutils from homebrew on mac
dircolors=dircolors
[[ `uname` == Darwin ]] && dircolors=gdircolors
if has_command $dircolors; then
    [[ -f ~/.dircolors ]] && eval `$dircolors ~/.dircolors`
    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi
export CLICOLORS=true
export LSCOLORS='exgxdadacxfafaAcAcAeex'
unset dircolors

# Setup grep
GREP_OPTIONS=( --color=auto --exclude=\*.{elc,pyc,zwc} --exclude=tags )
if ! $(grep --exclude-dir 2> /dev/null); then
    GREP_OPTIONS+=( --exclude-dir=.{svn,hg,bzr,git} )
else
    GREP_OPTIONS+=( --exclude=\*.{svn,hg,bzr,git}\* )
fi
export GREP_OPTIONS

# Fix key bindings for movind around:
# home/end
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# option-left/right
bindkey "\e[1;9D" backward-word
bindkey "\e[1;9C" forward-word

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey "\e[3~" delete-char

# Push current command on a stack, to run another one first
bindkey "^J" push-line

# fix above w.r.t iTerm2 settings, and:
# cmd-backspace backward-kill-line
# cmd-delete kill-line
# do nothing when getting pgup or pgdn

## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

autoload -U zcalc

# per-directory environment setup
has_command direnv && eval `direnv hook zsh`
