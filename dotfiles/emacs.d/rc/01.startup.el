(setq inhibit-startup-message t) 
(setq initial-scratch-message ";;;   S C R A T C H   B U F F E R   ;;;
")

(setq indent-tabs-mode nil)
(show-paren-mode t)
(global-visual-line-mode t)

(if window-system
    (progn
        ; update PATH from the bash config, keeping the application bundle's bin/
        (setq exec-path
            (delete-dups (append
                (parse-colon-path (shell-command-to-string "bash -lc 'echo $PATH'"))
                exec-path)))
        (setenv "PATH"
            (mapconcat 'identity exec-path path-separator))
        ; make forward-delete work
        (global-set-key [kp-delete] 'delete-char)
        (global-set-key [M-kp-delete] 'kill-word)
        ; make command the META key, and option access accents properly
        (setq ns-alternate-modifier (quote none))
        (setq ns-command-modifier (quote meta))
        (menu-bar-mode 1)
        (tool-bar-mode 0))
   (menu-bar-mode 0))

