export LC_ALL=en_US.UTF-8

# Share command history across terminals, lookup if path cache outdated
shopt -s histappend checkhash
export HISTSIZE=1000
export PROMPT_COMMAND='history -a'

# Show git branch & status in prompt
function _parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function _parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(_parse_git_dirty)]/"
}

# nameMachineDirPrompt='\[\e[01;32m\]\u\[\e[00;32m\]@\[\e[01;32m\]\h \[\e[01;33m\]\W'
# hourDirPrompt='\[\e[00;32m\]\A \[\e[01;33m\]\W'
dirPrompt='\[\e[0;92;7m\] \[\e[27;1m\] \W\[\e[0;32m\]$(_parse_git_branch)'

screenTitleEscape='\[\033k\033\\\]'
promptEnd=' \[\e[0m\]'
if [ $TERM != ${TERM/screen} ]; then
	promptEnd=${screenTitleEscape}'\[\e[0;32m\] \$'${promptEnd}
fi

export PS1=${dirPrompt}${promptEnd}
export PS2='\[\e[00;32m\]> \[\e[00;00m\]'

export LSCOLORS='ExGxFxDaCxDaDaAcAcAeEx'
lesspipe='/opt/local/bin/lesspipe.sh'
[ -e ${lesspipe} ] && export LESSOPEN="| ${lesspipe} %s"


unset screenTitleEscape promptEnd dirPrompt lesspipe
