# standalone texlive
texlivePrefix=/usr/local/texlive/${texliveVersion:=2008}
export PATH=$texlivePrefix/bin/`uname -p`-darwin:$PATH
export MANPATH=$texlivePrefix/texmf/doc/man:`manpath -q`
export INFOPATH=$texlivePrefix/texmf/doc/info:$INFOPATH
