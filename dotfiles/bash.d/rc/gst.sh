gstDir=/opt/gnu-smalltalk
if [ -x $gstDir/bin/gst ]; then
	export PATH=$gstDir/bin:$PATH

  if [ -n `which rlwrap` ]; then
    alias gst='rlwrap -p"1;34" -r gst'
  fi
fi
