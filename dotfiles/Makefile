.PHONY: treediff diff install

DOTDIRS = bash.d
DOTFILES = \
	$(shell find $(DOTDIRS) -not -type d) \
	bash_profile bashrc \
	gitconfig gitignore

# this could be overriden from command line to install somewhere else
DEST = $(HOME)

###
### here be the serious stuff
###

DESTDIRS = $(foreach dir, $(shell find $(DOTDIRS) -type d), $(DEST)/.$(dir))
DESTFILES = $(foreach file, $(DOTFILES), $(DEST)/.$(file))

treediff:
	@unset tmp; DEST=$(DEST); \
	tmp=`mktemp treediff.XXXX`; \
	find $(DESTDIRS) $(DESTFILES) | sort | uniq | cut -c $$(($${#DEST} + 3))- > $${tmp}; \
	find $(DOTDIRS) $(DOTFILES) | sort | uniq | diff --unified=0 - $${tmp} | tail -n +4; \
	rm $${tmp}

diff:
	@for f in $(DOTFILES); do diff -uN $${f} $(DEST)/.$${f}; done

install: $(DESTDIRS) $(DESTFILES)

$(DESTFILES): $(DEST)/.%: %
	cp -r $< $@

$(DESTDIRS):
	mkdir -p $(@)
