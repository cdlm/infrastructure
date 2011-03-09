# standalone texlive
if [ -f ~/.texliveVersion ]; then
    texliveVersion=$(cat ~/.texliveVersion)
fi
texlivePrefix=/usr/local/texlive/${texliveVersion:=2009}

pathmunge PATH $texlivePrefix/bin/universal-darwin
pathmunge INFOPATH $texlivePrefix/texmf/doc/info
export MANPATH=$texlivePrefix/texmf/doc/man:`manpath -q`

unset texlivePrefix texliveVersion
