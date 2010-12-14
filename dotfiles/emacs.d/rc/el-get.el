(require 'el-get "~/.emacs.d/el-get/el-get/el-get")
(setq el-get-sources '(
    el-get
    
    auctex
    autopair
    switch-window
    textile-mode
    tuareg-mode

    (:name color-theme
        :after (lambda ()
            (if window-system
                (progn
                    (require 'color-theme-tangotango "themes/color-theme-tangotango") ; colorful
                    (color-theme-tangotango))
                (progn
                    (require 'terminal-color-themes "themes/terminal-color-themes")
                    (color-theme-tty-dark)))))

    (:name magit
        :after (lambda ()
            (progn
                (global-set-key (kbd "C-x C-z") 'magit-status) ;(require 'magit-svn)
                )))
    
    (:name markdown-mode
        :type git
        :url "git://jblevins.org/git/markdown-mode.git"
        :after (lambda ()
            (progn
                (add-to-list 'auto-mode-alist '("\\.\\(md\\|markdown\\)$" . markdown-mode))
                (add-hook 'markdown-mode-hook
                   '(lambda()
                      (setq markdown-command "kramdown")
                      (setq markdown-italic-underscore t))))))
))

(el-get)
