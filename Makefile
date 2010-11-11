# This could be overriden from command line to install somewhere else
PREFIX = $(HOME)
DIFF = $(firstword $(shell which colordiff diff))

default: install

install: install-dotfiles install-tools
diff: diff-dotfiles diff-tools

include dotfiles.makefile tools.makefile
include submodules/completion-ruby.makefile
include submodules/git-vim.makefile
include submodules/markdown-mode.makefile

.PHONY: default install diff

###
### General rules
###

%.elc: %.el
	emacs -batch -f batch-byte-compile $<
