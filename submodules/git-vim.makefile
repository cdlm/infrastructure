GV = submodules/git-vim
GV_PREFIX = $(PREFIX)/.vim
GV_SRC = $(shell find $(GV) -path '*/.git' -prune -o -name README.rdoc -prune -o -type f -print)
GV_DST = $(GV_SRC:$(GV)/%=$(GV_PREFIX)/%)

install: install-git-vim

install-git-vim: $(GV_DST)

$(GV_DST): \
$(GV_PREFIX)/%: $(GV)/%
	install -d $(@D)  &&  install -m 0644 $< $@

.PHONY: install-git-vim
