# This could be overriden from command line to install somewhere else
PREFIX = $(HOME)
DIFF = $(firstword $(shell which colordiff diff))

.PHONY: default install diff

default: install

install: install-dotfiles install-tools
diff: diff-dotfiles diff-tools

###
### Configuration files
### dotfiles/x/y goes to $PREFIX/.x/y
###
.PHONY: install-dotfiles diff-dotfiles treediff-dotfiles
DOTFILES_SRC = $(shell find dotfiles -not -type d)
DOTFILES_DST = $(DOTFILES_SRC:dotfiles/%=$(PREFIX)/.%)
DOTFILES_POST = $(patsubst %.el, %.elc, $(filter-out %setup.el, $(filter %.el, $(DOTFILES_DST))))

install-dotfiles: $(DOTFILES_DST) $(DOTFILES_POST)

$(DOTFILES_DST): \
$(PREFIX)/.%: dotfiles/%
	install -d $(@D)  &&  install $< $@

# convenience for install
$(PREFIX)/.emacs:
	echo '(load "$(DEST)/.emacs.d/setup.el")' >> $@

diff-dotfiles:
	@for f in $(DOTFILES_SRC:dotfiles/%=%); do \
		$(DIFF) -uN dotfiles/$${f} $(PREFIX)/.$${f}; \
	done

treediff-dotfiles:
	@$(DIFF) --unified=0 \
	  <( find $(DOTFILES_DST) | sort | uniq | sed s:$(PREFIX)/.:: ) \
	  <( find $(DOTFILES_SRC) | sort | uniq ) \
	| tail -n +4


###
### Utilities
### tools/x goes to $PREFIX/bin/x provided it's executable
###
.PHONY: install-tools diff-tools
TOOLS_SRC = $(shell find tools -name .git -prune -o -type f -perm -u=x -print)
TOOLS_DST = $(TOOLS_SRC:tools/%=$(PREFIX)/bin/%)

install-tools: $(TOOLS_DST)

$(TOOLS_DST): \
$(PREFIX)/bin/%: tools/%
	install -d $(@D)  &&  install $< $@

diff-tools:
	@for f in $(TOOLS_SRC:tools/%=%); do \
		$(DIFF) -uN tools/$${f} $(PREFIX)/bin/$${f}; \
	done


###
### General rules
###

%.elc: %.el
	emacs -batch -f batch-byte-compile $<
