export LC_CTYPE=en_US.UTF-8

export LSCOLORS='ExGxFxDaCxDaDaAcAcAeEx'

nameMachineDirPrompt='\[\e[01;32m\]\u\[\e[00;32m\]@\[\e[01;32m\]\h \[\e[01;33m\]\W \[\e[00;00m\]'
hourDirPrompt='\[\e[00;32m\]\A \[\e[01;33m\]\W \[\e[00m\]'
dirPrompt='\[\e[00;01;32;07m\] \[\e[27m\] \W \[\e[00m\]'
export PS1=$dirPrompt
export PS2='\[\e[00;32m\]> \[\e[00;00m\]'
