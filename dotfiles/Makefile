.PHONY: default treediff diff backup install postinstall

DOTDIRS = bash.d emacs.d track_my_time.d vim
DOTFILES = \
	$(shell find $(DOTDIRS) -not -type d) \
	bash_profile bashrc \
	gitconfig gitignore tigrc \
	hgrc \
	latexmkrc \
	screenrc \
	surfraw.conf \
	vimrc

# This could be overriden from command line to install somewhere else
DEST = $(HOME)

###
### Here be the serious stuff
###

default: treediff

DESTDIRS = $(foreach dir, $(shell find $(DOTDIRS) -type d), $(DEST)/.$(dir))
DESTFILES = $(foreach file, $(DOTFILES), $(DEST)/.$(file))
SHELL=/bin/bash
DIFF=$(firstword $(shell which colordiff diff))
export DEST

treediff:
	@$(DIFF) --unified=0 \
	  <( find $(DESTDIRS) $(DESTFILES) | sort | uniq | sed s:$${DEST}/.:: ) \
	  <( find $(DOTDIRS) $(DOTFILES) | sort | uniq ) \
	| tail -n +4

diff:
	@for f in $(DOTFILES); do $(DIFF) -uN $${f} $(DEST)/.$${f}; done

backup:
	for f in $(DESTFILES); do \
	  if [[ -f $${f} ]]; then mv $${f}{,.old}; fi; \
	done

install: $(DESTDIRS) $(DESTFILES) postinstall

postinstall:

$(DESTFILES): 
$(DEST)/.%: %
	cp -r $< $@

$(DESTDIRS):
	mkdir -p $(@)

###
### File-specific stuff
###

$(DEST)/.emacs:
	echo '(load "$(DEST)/.emacs.d/setup.el")' >> $@

postinstall: $(patsubst %.el, %.elc, $(filter-out %setup.el, $(filter %.el, $(DESTFILES))))

%.elc: %.el
	emacs -batch -f batch-byte-compile $<
