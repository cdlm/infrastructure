(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let ((el-get-install-branch "3.stable"))
      (end-of-buffer)
      (eval-print-last-sexp))))

(eval-after-load 'el-get
  '(progn
     (setq el-get-user-packages-directory "~/.emacs.d/packages-init")
     (setq el-get-sources '(
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

              ;; development tools
              egg

              ;; language modes
              asciidoc
              auctex
              slime clojure-mode
              cmake-mode
              go-mode
              haml-mode
              markdown-mode
              sass-mode
              ssh-config
              textile-mode
              tuareg-mode
              yaml-mode

              ;; editing
              ack
              autopair
              ;;auto-indent-mode
              auto-complete
              auto-complete-emacs-lisp
              ;;auto-complete-yasnippet
              auto-complete-css
              auto-complete-ruby
              ;;auto-complete-latex
              auto-complete-clang
              auto-complete-etags
              auto-complete-extension
              ;;yasnippet

              ;; general interface
              switch-window
              color-theme-solarized
              ;;tabbar
              )
            (mapcar 'el-get-source-name el-get-sources)))

     (el-get 'sync my-packages)))
