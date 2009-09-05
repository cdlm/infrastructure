# standalone texlive
if [ -f ~/.texliveVersion ]; then
    texliveVersion=$(cat ~/.texliveVersion)
fi
texlivePrefix=/usr/local/texlive/${texliveVersion:=2008}
export PATH=$texlivePrefix/bin/universal-darwin:$PATH
export MANPATH=$texlivePrefix/texmf/doc/man:`manpath -q`
export INFOPATH=$texlivePrefix/texmf/doc/info:$INFOPATH

unset texlivePrefix texliveVersion
