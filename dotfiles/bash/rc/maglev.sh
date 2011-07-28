# GemStone and Maglev
gemstoneRoot=/opt/gemstone

### installation procedure:
# mkdir $gemstoneRoot && cd $gemstoneRoot
# git clone git://github.com/MagLev/maglev.git maglev.gitclone
# cd maglev.gitclone
# ./install.sh     # this will pull GemStone too, use update.sh afterwards
# ln -s ...        # to avoid versions in the PATH
#
# For the frontend GemTools, get http://seaside.gemstone.com/squeak/GemTools-MagLev.zip

if [ -d $gemstoneRoot ]; then
  export GEMSTONE_HOME=$gemstoneRoot/current
  export MAGLEV_HOME=$gemstoneRoot/maglev
  # export PATH=$MAGLEV_HOME/bin:$GEMSTONE_HOME/bin:$PATH
fi

# call by hand only when needed, else it overrides Ruby's irb
set_maglev_path() {
    pathmunge PATH $GEMSTONE_HOME/bin
    pathmunge PATH $MAGLEV_HOME/bin
}
