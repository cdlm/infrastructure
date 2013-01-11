#!/bin/bash
set -o nounset -o errexit


TEXLIVE_PREFIX='/opt/texlive'
HOMEBREW_PREFIX='/opt/homebrew'
HOMEBREW_PACKAGES=(
    ruby-build rbenv-bundler

    zsh zsh-completions
    ssh-copy-id
    git hub tig

    ack
    tmux
    htop-osx pstree tree
    gnu-sed

    nginx

    poppler
    vimpager
    wtf
    colordiff
    dos2unix exiv2 youtube-dl
    direnv
)
RUBY_VERSION='1.9.3-p362'


################################################################################
# installation sequence

function exists() {
  if command -v $1 &>/dev/null
  then
    return 0
  else
    return 1
  fi
}


if [[ `groups` != *admin* ]]; then
    echo "You must have admin (sudo) rights on the machine"
    exit 1
fi


echo "Preparing some directories..."
sudo install -d -o root -g wheel -m 755 `basename "$HOMEBREW_PREFIX"`
sudo install -d -o root -g admin -m 775 "$HOMEBREW_PREFIX"
sudo install -d -o root -g wheel -m 755 `basename "$TEXLIVE_PREFIX"`
sudo install -d -o root -g admin -m 775 "$TEXLIVE_PREFIX"


echo "Check for software updates..."
if exists softwareupdate; then
  sudo softwareupdate --install
fi


echo -n "Check for xcode/compiler..."
if exists xcode-select; then
  echo " OK"
else
  echo " please install it :("
  exit 1
fi

xcode_path="$(xcode-select -print-path)"
xcode_expected="/Applications/Xcode.app/Contents/Developer" 
if [[ "$xcode_path" != "$xcode_expected" ]]; then
  echo "Found XCode at $xcode_path but expected it at $xcode_expected, please investigate"
fi


echo -n "Installing homebrew..."
export PATH="$HOMEBREW_PREFIX/bin:$PATH"
if exists brew; then
    echo "already done, apparently"
else
    echo
    rm -fr "$HOMEBREW_PREFIX/*.*"
    ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go | sed -e "s|^\(HOMEBREW_PREFIX[ \t]*=[ \t]*\).*$|\1'$HOMEBREW_PREFIX'|" )"
    if ! exists brew; then
        echo "Oops, brew not found!?"
        exit 1
    fi
fi


echo "Installing basic homebrew packages..."
for package in "${HOMEBREW_PACKAGES[@]}"; do
    (brew list | grep "^$package$") || brew install "$package"
done


echo -n "Building a nice modern Ruby..."
if exists rbenv; then
    eval "$(rbenv init -)"
else
    echo " nope, rbenv not found :("
    exit 1
fi
(rbenv versions | grep "$RUBY_VERSION") || rbenv install "$RUBY_VERSION" && rbenv rehash


echo -n "Installing basic ruby gems..."
if [[ `which gem` == "$HOME/.rbenv/shims/gem" ]]; then
    echo " let's go!"
else
    echo " Oops, found `which gem` instead of rbenv's gem!"
    exit 1
fi

gem install bundler && rbenv rehash
bundle install --gemfile=./bootstrap-gemfile.rb


echo "Installing TeXlive..."
mkdir install-tl
(
    cd install-tl
    curl http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
        | tar xf - --strip-components 1
    
    texlive_version=$(./install-tl --version | sed '/^TeX Live/!d;s/.*\([0-9][0-9][0-9][0-9]\).*/\1/')
    sed -e "s/<%= *PREFIX *%>/${TEXLIVE_PREFIX}/" -e "s/<% *RELEASE *%>/${texlive_version}/" ../texlive.profile > texlive.profile
    ./install-tl -no-gui -profile texlive.profile
)

