(defun open-next-line ()
  "Insert a new physical line below the current one, moving the point to there."
  (interactive)
  (end-of-line)
  (newline-and-indent))

(global-set-key (kbd "C-<return>") 'open-next-line)
