.PHONY: treediff diff install

DOTDIRS = bash.d
DOTFILES = \
	$(foreach dir, $(DOTDIRS), $(shell find $(dir) -type f)) \
	bash_profile bashrc \
	gitconfig gitignore
# DOTFILES = \
# 	bash.d \
# 	bash_profile bashrc \
# 	gitconfig gitignore

DEST = $(HOME)
DESTFILES = $(foreach file, $(DOTFILES), $(DEST)/.$(file))

treediff:
	@unset tmp; DEST=$(DEST); \
	tmp=`mktemp treediff.XXXX`; \
	find $(DESTFILES) | cut -c $$(($${#DEST} + 3))- | sort > $${tmp}; \
	find $(DOTFILES) | sort | diff -u - $${tmp}; \
	rm $${tmp}

diff:
	@for f in $(DOTFILES); do diff -uN $${f} $(DEST)/.$${f}; done

install: $(DESTFILES)
	
$(HOME)/.%: %
	@mkdir -p $(@D)
	cp -r $< $@
