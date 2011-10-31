(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (end-of-buffer)
      (eval-print-last-sexp))))

(setq el-get-sources
      '(
	(:name auto-complete
	       :after (lambda ()
			(global-auto-complete-mode t)))
	
	(:name autopair
	       :after (lambda ()
			(autopair-global-mode t)))
	
	(:name color-theme
	       :after (lambda ()
			(if window-system
			    (progn
			      (require 'color-theme-tangotango "themes/color-theme-tangotango") ; colorful
			      (color-theme-tangotango))
			  (progn
			    (require 'terminal-color-themes "themes/terminal-color-themes")
			    (color-theme-tty-dark)))))
	
	(:name markdown-mode
	       :after (lambda ()
			(progn
			  (add-to-list 'auto-mode-alist '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))
			  (add-hook 'markdown-mode-hook
				    '(lambda()
				       (setq markdown-command "kramdown")
				       (setq markdown-italic-underscore t)
				       (setq markdown-enable-math t))))))

	(:name textlint
	       :type git
	       :url "git@github.com:DamienCassou/textlint.git"
	       :website "http://scg.unibe.ch/research/textlint"
	       :description "Allows the integration of TextLint within Emacs"
	       :load "textlint.el")
	))

(setq my-packages
      (append
       '(
	 el-get

	 ;;; development tools
	 egg
	 
	 ;;; language modes
	 asciidoc
	 auctex
	 slime clojure-mode
	 cmake-mode
	 go-mode
	 haml-mode
	 sass-mode
	 ssh-config
	 textile-mode
	 tuareg-mode
	 yaml-mode
	 
	 ;;; editing
	 ack
	 auto-complete-clang
	 auto-complete-etags
	 auto-complete-extension
	 yasnippet
	 
	 ;; general interface
	 switch-window
	 )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

