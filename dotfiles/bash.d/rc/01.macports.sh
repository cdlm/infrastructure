if [ -d /opt/local ]; then
   pathmunge PATH /opt/local/sbin
   pathmunge PATH /opt/local/bin
   #export MANPATH=/opt/local/share/man:`manpath -q`
   pathmunge INFOPATH /opt/local/share/info
fi
