# standalone texlive

function texlive_set_paths() {
    local texliveVersion texlivePrefix

    texliveVersion=${1:-$(cat ~/.texliveVersion 2>/dev/null)}
    texlivePrefix=/usr/local/texlive/${texliveVersion:-2010}

    pathmunge PATH $texlivePrefix/bin/universal-darwin
    pathmunge INFOPATH $texlivePrefix/texmf/doc/info
    export MANPATH=$texlivePrefix/texmf/doc/man:`manpath -q`
}

texlive_set_paths
