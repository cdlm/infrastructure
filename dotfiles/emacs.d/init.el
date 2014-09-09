(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'cask "/opt/homebrew/opt/cask/cask.el")
(cask-initialize)
(require 'pallet)
(require 'use-package)

(require 'powerline)
(powerline-default-theme)

(use-package drag-stuff
  :diminish drag-stuff-mode
  :init (progn
	  (setq drag-stuff-modifier '(super control))
	  (add-to-list 'drag-stuff-except-modes 'org-mode)
	  (add-to-list 'drag-stuff-except-modes 'rebase-mode)
	  (drag-stuff-global-mode t)))

(use-package magit
  :bind ("C-x g" . magit-status)
  :config (progn
	    ;(require 'magit-svn)
	    (use-package magit-svn
	      :defer t
	      :diminish magit-svn-mode)
	    (add-hook 'magit-mode-hook 'turn-on-magit-svn)))

(use-package ido
  :config (progn
	    (use-package flx-ido
	      :init (progn
		      (ido-mode 1)
		      (ido-everywhere 1)
		      (flx-ido-mode 1)
		      ;; disable ido faces to see flx highlights.
		      (setq ido-use-faces t)))
	    (use-package ido-vertical-mode
	      :init (ido-vertical-mode 1))
	    (use-package ido-ubiquitous
	      :init (ido-ubiquitous-mode)))
  :init (ido-mode 'buffer))

(use-package smex
  :bind ("M-x" . smex))

(use-package recentf
  :defer t
  :config (use-package recentf-ext))


(use-package paren-face
  :init (progn
	  (global-paren-face-mode)))

(use-package rainbow-delimiters
  :config (progn
	    (show-paren-mode)
	    (show-smartparens-mode))
  :commands rainbow-delimiters-mode)

(use-package smartparens
  ;; additional pairs
  :diminish smartparens-mode)


(use-package color-theme-sanityinc-solarized
  :if (display-graphic-p)
  :config (progn
      (load-theme 'sanityinc-solarized-dark)
      (set-face-background 'cursor "#df4") ; I like it to flash
      (color-theme-sanityinc-solarized--with-colors
       'dark
       (set-face-foreground 'parenthesis faintest))))


(use-package auctex-latexmk
  :config (auctex-latexmk-setup))


(defun add-to-executable-path (path)
  (let ((expanded-path (expand-file-name path)))
    (add-to-list 'exec-path expanded-path)
    (setenv "PATH" (concat expanded-path ":" (getenv "PATH")))))

(when (display-graphic-p)		; GUI settings
  (cd "~")				; OS X apps launch from /
  (mapc 'add-to-executable-path		; and do not inherit the user's shell environment
	(list
	 "/opt/texlive/2014/bin/x86_64-darwin"
	 "/opt/homebrew/bin"))
  (add-hook 'after-init-hook 'server-start))

(when (not (display-graphic-p))		; terminal settings
  (menu-bar-mode -1)
  ; (load-theme 'wombat)			; unnecessary it seems
)

;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

; browse-url-at-mouse
