HOMEPERL=$HOME/var/perl

if [ -d $HOMEPERL ]; then
  pathmunge PATH $HOMEPERL/bin
  export PERL5LIB=$HOMEPERL/lib/perl5/site_perl/
fi
