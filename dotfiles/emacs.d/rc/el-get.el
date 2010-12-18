(require 'el-get "~/.emacs.d/el-get/el-get/el-get")
(setq el-get-sources '(
    (:name magit
        :after (lambda ()
            (progn
                (require 'magit-svn)
                (global-set-key (kbd "C-x C-z") 'magit-status))))
    
    el-get
    asciidoc
    auctex
    switch-window
    yaml-mode
    
    ; autopair
    (:name autopair
        :after (lambda ()
            (autopair-global-mode t)))
    
    ; (:name tuareg-mode
    ;     :after (lambda ()
    ;         (add-to-list 'auto-mode-alist '("\\.mli?\\'" . tuareg-mode))))

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

    (:name textile-mode
        :after (lambda ()
            (add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))))
    
))

(el-get)

(defun el-get-update-all ()
    "Update all packages"
    (interactive)
    (dolist (package (mapcar 'el-get-package-name el-get-sources))
        (el-get-update package)))
