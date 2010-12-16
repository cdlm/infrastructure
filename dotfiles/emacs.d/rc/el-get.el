(require 'el-get "~/.emacs.d/el-get/el-get/el-get")
(setq el-get-sources '(
    el-get
    
    auctex
    autopair
    switch-window
    
    (:name tuareg-mode
        :after (lambda ()
            (add-to-list 'auto-mode-alist '("\\.mli?\\'" . tuareg-mode))))

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
                (require 'magit-svn)
                (global-set-key (kbd "C-x C-z") 'magit-status))))
    
    (:name markdown-mode
        :after (lambda ()
            (progn
                (add-to-list 'auto-mode-alist '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))
                (add-hook 'markdown-mode-hook
                   '(lambda()
                      (setq markdown-command "kramdown")
                      (setq markdown-italic-underscore t)
                      (setq markdown-enable-math t))))))

    (:name textile-mode
        :after (lambda ()
            (add=to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))))
    
))

(el-get)
