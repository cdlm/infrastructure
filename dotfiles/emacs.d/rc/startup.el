(setq inhibit-startup-message t) 
(setq initial-scratch-message ";;;   S C R A T C H   B U F F E R   ;;;
")

(setq indent-tabs-mode nil)

(if window-system
    (progn
        (global-set-key [kp-delete] 'delete-char)
        (global-set-key [M-kp-delete] 'kill-word)
        (menu-bar-mode 1)
        (tool-bar-mode 0))
   (menu-bar-mode 0))

