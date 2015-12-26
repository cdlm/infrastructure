# detect Go language installation

if has_command go; then
    export -TU GOPATH gopath
    gopath+="$bp/opt/go/libexec"
    for d in "$gopath"; do
        [ -d "$d" ] && path+="$d"/bin
    done
fi
