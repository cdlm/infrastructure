### Configuration files
### dotfiles/x/y goes to $PREFIX/.x/y
###
.PHONY: install-dotfiles diff-dotfiles treediff-dotfiles
DOTFILES_SRC = $(shell find dotfiles -path '*/.svn' -prune -o -type f -print)
DOTFILES_DST = $(DOTFILES_SRC:dotfiles/%=$(PREFIX)/.%)
DOTFILES_POST = $(patsubst %.el, %.elc, $(wildcard $(PREFIX)/.emacs.d/lisp/*.el))
ELGET = $(PREFIX)/.emacs.d/el-get

install-dotfiles: $(DOTFILES_DST) $(DOTFILES_POST) $(ELGET)

$(DOTFILES_DST): \
$(PREFIX)/.%: dotfiles/%
	install -d $(@D)  &&  install -m 600 $< $@

diff-dotfiles:
	@for f in $(DOTFILES_SRC:dotfiles/%=%); do \
		$(DIFF) -uN dotfiles/$${f} $(PREFIX)/.$${f}; \
	done

treediff-dotfiles:
	@$(DIFF) --unified=0 \
	  <( find $(DOTFILES_DST) | sort | uniq | sed s:$(PREFIX)/.:: ) \
	  <( find $(DOTFILES_SRC) | sort | uniq ) \
	| tail -n +4

$(ELGET):
	install -d $(ELGET)
	cd $(ELGET) && git clone git://github.com/dimitri/el-get.git