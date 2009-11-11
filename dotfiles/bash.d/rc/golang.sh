# http://golang.org/
GOROOT=/opt/golang
if [ -d $GOROOT ]; then
  export GOROOT
  export GOOS=darwin
  export GOARCH=386
  export GOBIN=$GOROOT/bin
  export PATH=$GOBIN:$PATH
fi
