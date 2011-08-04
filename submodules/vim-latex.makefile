install: install-vim-latex

install-vim-latex:
	cd submodules/vim-latex/vimfiles \
		&& make VIMDIR=$(PREFIX)/.vim/bundle/vim-latex BINDIR=$(PREFIX)/bin install

.PHONY: install-vim-latex

