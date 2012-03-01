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
               :after (progn (global-auto-complete-mode t)))

        (:name autopair
               :after (progn
                        (add-hook 'sldb-mode-hook #'(lambda () (setq autopair-dont-activate t)))
                        (autopair-global-mode)
                        ))

        (:name color-theme-solarized
               :type git
               :url "https://github.com/sellout/emacs-color-theme-solarized.git"
               :website "https://github.com/sellout/emacs-color-theme-solarized"
               :description "Solarized color theme"
               :require 'color-theme
               :post-init (progn
                            ;; this is supposed to work in Emacs 24 (but doesn't):
                            ;; (add-to-list 'custom-theme-load-path
                            ;;    (el-get-load-path 'color-theme-solarized))
                            ;; (load-theme "solarized-dark" t)))
                            (require 'color-theme-solarized)
                            (color-theme-solarized-dark)))

        (:name markdown-mode
               :after (progn
                        (add-to-list 'auto-mode-alist '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))
                        (add-hook 'markdown-mode-hook
                                  #'(lambda ()
                                      (setq markdown-command "kramdown")
                                      (setq markdown-italic-underscore t)
                                      (setq markdown-enable-math t)))))

        (:name textlint
               :type git
               ;; this is the RW url
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
