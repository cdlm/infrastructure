install: install-vim-latex

install-vim-latex:
	cd submodules/vim-latex/vimfiles \
		&& make VIMDIR=$(PREFIX)/.vim/bundle/vim-latex BINDIR=$(PREFIX)/bin install >/dev/null

.PHONY: install-vim-latex

