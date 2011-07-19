# This could be overriden from command line to install somewhere else
PREFIX = $(HOME)
DIFF = $(firstword $(shell which colordiff diff))
INSTALL = install -Cvm 600
INSTALLBIN = install -Cvm 700
INSTALLDIR = install -d


default: install

install: install-dotfiles install-tools
diff: diff-dotfiles diff-tools

include dotfiles.makefile tools.makefile
include submodules/completion-ruby.makefile

.PHONY: default install diff

###
### General rules
###

%.elc: %.el
	emacs --batch --funcall batch-byte-compile $<
