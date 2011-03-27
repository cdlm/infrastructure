(defun open-next-line ()
  "Insert a new physical line below the current one, moving the point to there."
  (interactive)
  (end-of-line)
  (newline-and-indent))

(global-set-key (kbd "C-<return>") 'open-next-line)

;; movement keys
(global-set-key (kbd "M-z") 'undo)

(global-set-key (kbd "C-<kp-delete>") 'kill-word)

(global-set-key (kbd "A-<left>") 'backward-word)
(global-set-key (kbd "A-<right>") 'forward-word)

(global-set-key (kbd "M-<left>") 'beginning-of-visual-line)
(global-set-key (kbd "M-<right>") 'end-of-visual-line)
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)

(global-set-key (kbd "M-<up>") 'beginning-of-buffer)
(global-set-key (kbd "M-<down>") 'end-of-buffer)
