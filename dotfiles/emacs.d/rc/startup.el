(setq inhibit-startup-message t) 
(setq initial-scratch-message ";;;   S C R A T C H   B U F F E R   ;;;
")

(setq indent-tabs-mode nil)

(if window-system
    (progn
        ; make forward-delete work
        (global-set-key [kp-delete] 'delete-char)
        (global-set-key [M-kp-delete] 'kill-word)
        ; make command the META key, and option access accents properly
        (setq ns-alternate-modifier (quote none))
        (setq ns-command-modifier (quote meta))
        (menu-bar-mode 1)
        (tool-bar-mode 0))
   (menu-bar-mode 0))

