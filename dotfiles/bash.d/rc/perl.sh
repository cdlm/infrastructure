HOMEPERL=$HOME/var/perl

if [ -d $HOMEPERL ]; then
  export PATH=$HOMEPERL/bin:$PATH
  export PERL5LIB=$HOMEPERL/lib/perl5/site_perl/
fi
