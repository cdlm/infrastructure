(require 'el-get "~/.emacs.d/el-get/el-get/el-get")
(setq el-get-sources '(
    el-get

    ; development tools
    egg

    ; language modes
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

    ; editing
    ack
    (:name auto-complete
        :after (lambda ()
            (global-auto-complete-mode t)))
    auto-complete-clang
    auto-complete-etags
    auto-complete-extension
    yasnippet

    ; general interface
    switch-window
    ; ido

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

(el-get)
