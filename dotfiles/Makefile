.PHONY: default treediff diff backup install

DOTDIRS = bash.d emacs.d
DOTFILES = \
	$(shell find $(DOTDIRS) -not -type d) \
	bash_profile bashrc \
	gitconfig gitignore \
	latexmkrc \
	screenrc

# this could be overriden from command line to install somewhere else
DEST = $(HOME)

###
### here be the serious stuff
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

install: $(DESTDIRS) $(DESTFILES)

$(DESTFILES): $(DEST)/.%: %
	cp -r $< $@

$(DEST)/.emacs:
	echo '(load-file "$(DEST)/.emacs.d/setup.el")' >> $@

$(DESTDIRS):
	mkdir -p $(@)
