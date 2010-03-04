(setq inhibit-startup-message t) 
(setq initial-scratch-message ";;;   S C R A T C H   B U F F E R   ;;;
")

(if window-system
   (progn
      (menu-bar-mode 1)
      (tool-bar-mode 0))
   (menu-bar-mode 0))
