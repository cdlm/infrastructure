# detect Go language installation

if GOROOT=`find_command go`; then
    export GOROOT=${GOROOT%%/bin/go}
else
    unset GOROOT
fi
