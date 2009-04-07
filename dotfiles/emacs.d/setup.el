;;;
;;; personal emacs setup, to be loaded from ~/.emacs
;;;

;; lisp extensions
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp")

;; load configuration modules
(require 'elisp-load-dir)
(elisp-load-dir "~/.emacs.d/rc")

;; misc one-liners
(server-start)