install: dotfiles/emacs.d/lisp/markdown-mode.el

dotfiles/emacs.d/lisp/markdown-mode.el: submodules/markdown-mode/markdown-mode.el
	cp $< $@
