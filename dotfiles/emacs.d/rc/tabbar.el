(if window-system
	(progn
		(require 'tabbar)
		(eval-after-load "tabbar" '(tabbar-mode t))))
