# standalone texlive

function texlive_set_paths() {
    local texliveVersion texlivePrefix

    texliveVersion=${1:-$(< ~/.texliveVersion 2>/dev/null)}
    texlivePrefix=/usr/local/texlive/${texliveVersion:-2010}

    path+=$texlivePrefix/bin/universal-darwin
    infopath+=$texlivePrefix/texmf/doc/info
    MANPATH+=$texlivePrefix/texmf/doc/man
}

texlive_set_paths
