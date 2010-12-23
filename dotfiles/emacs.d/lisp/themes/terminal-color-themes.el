(eval-when-compile
  (require 'color-theme))

(defun color-theme-hober (&optional preview)
  "Does all sorts of crazy stuff.
Originally based on color-theme-standard, so I probably still have some
setting that I haven't changed. I also liberally copied settings from
the other themes in this package. The end result isn't much like the
other ones; I hope you like it."
  (interactive)
  (color-theme-install
   '(color-theme-hober
     ((foreground-color . "#c0c0c0")
      (background-color . "black")
      (mouse-color . "black")
      (cursor-color . "medium turquoise")
      (border-color . "black")
      (background-mode . dark))
     (default ((t (nil))))
     (modeline ((t (:foreground "white" :background "darkslateblue"))))
     (modeline-buffer-id ((t (:foreground "white" :background "darkslateblue"))))
     (modeline-mousable ((t (:foreground "white" :background "darkslateblue"))))
     (modeline-mousable-minor-mode ((t (:foreground "white" :background "darkslateblue"))))
     (highlight ((t (:foreground "black" :background "#c0c0c0"))))
     (bold ((t (:bold t))))
     (italic ((t (:italic t))))
     (bold-italic ((t (:bold t :italic t))))
     (region ((t (:foreground "white" :background "darkslateblue"))))
     (zmacs-region ((t (:foreground "white" :background "darkslateblue"))))
     (secondary-selection ((t (:background "paleturquoise"))))
     (underline ((t (:underline t))))
     (diary-face ((t (:foreground "red"))))
     (calendar-today-face ((t (:underline t))))
     (holiday-face ((t (:background "pink"))))
     (widget-documentation-face ((t (:foreground "dark green" :background "white"))))
     (widget-button-face ((t (:bold t))))
     (widget-button-pressed-face ((t (:foreground "red" :background "black"))))
     (widget-field-face ((t (:background "gray85" :foreground "black"))))
     (widget-single-line-field-face ((t (:background "gray85" :foreground "black"))))
     (widget-inactive-face ((t (:foreground "dim gray" :background "red"))))
     (fixed ((t (:bold t))))
     (excerpt ((t (:italic t))))
     (term-default-fg ((t (nil))))
     (term-default-bg ((t (nil))))
     (term-default-fg-inv ((t (nil))))
     (term-default-bg-inv ((t (nil))))
     (term-bold ((t (:bold t))))
     (term-underline ((t (:underline t))))
     (term-invisible ((t (nil))))
     (term-invisible-inv ((t (nil))))
     (term-white ((t (:foreground "#c0c0c0"))))
     (term-whitebg ((t (:background "#c0c0c0"))))
     (term-black ((t (:foreground "black"))))
     (term-blackbg ((t (:background "black"))))
     (term-red ((t (:foreground "#ef8171"))))
     (term-redbg ((t (:background "#ef8171"))))
     (term-green ((t (:foreground "#e5f779"))))
     (term-greenbg ((t (:background "#e5f779"))))
     (term-yellow ((t (:foreground "#fff796"))))
     (term-yellowbg ((t (:background "#fff796"))))
     (term-blue ((t (:foreground "#4186be"))))
     (term-bluebg ((t (:background "#4186be"))))
     (term-magenta ((t (:foreground "#ef9ebe"))))
     (term-magentabg ((t (:background "#ef9ebe"))))
     (term-cyan ((t (:foreground "#71bebe"))))
     (term-cyanbg ((t (:background "#71bebe"))))
     (font-lock-keyword-face ((t (:foreground "#00ffff"))))
     (font-lock-comment-face ((t (:foreground "Red"))))
     (font-lock-string-face ((t (:foreground "#ffff00"))))
     (font-lock-constant-face ((t (:foreground "#00ff00"))))
     (font-lock-builtin-face ((t (:foreground "#ffaa00"))))
     (font-lock-type-face ((t (:foreground "Coral"))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     (font-lock-function-name-face ((t (:foreground "#4186be"))))
     (font-lock-variable-name-face ((t (:foreground "white" :bold t))))
     (message-header-to-face ((t (:foreground "#4186be" :bold t))))
     (message-header-cc-face ((t (:foreground "#4186be"))))
     (message-header-subject-face ((t (:foreground "#4186be" :bold t))))
     (message-header-newsgroups-face ((t (:foreground "Coral" :bold t))))
     (message-header-other-face ((t (:foreground "steel blue"))))
     (message-header-name-face ((t (:foreground "white"))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-separator-face ((t (:foreground "brown"))))
     (message-cited-text-face ((t (:foreground "white"))))
     (gnus-header-from-face ((t (:foreground "Coral"))))
     (gnus-header-subject-face ((t (:foreground "#4186be"))))
     (gnus-header-newsgroups-face ((t (:foreground "#4186be" :italic t))))
     (gnus-header-name-face ((t (:foreground "white"))))
     (gnus-header-content-face ((t (:foreground "#4186be" :italic t))))
     (gnus-cite-attribution-face ((t (:italic t))))
     (gnus-cite-face-list ((t (:bold nil :foreground "red"))))
     (gnus-group-news-1-face ((t (:foreground "ForestGreen" :bold t))))
     (gnus-group-news-1-empty-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-2-face ((t (:foreground "CadetBlue4" :bold t))))
     (gnus-group-news-2-empty-face ((t (:foreground "CadetBlue4"))))
     (gnus-group-news-3-face ((t (:bold t))))
     (gnus-group-news-3-empty-face ((t (nil))))
     (gnus-group-news-low-face ((t (:foreground "DarkGreen" :bold t))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkGreen"))))
     (gnus-group-mail-1-face ((t (:foreground "DeepPink3" :bold t))))
     (gnus-group-mail-1-empty-face ((t (:foreground "DeepPink3"))))
     (gnus-group-mail-2-face ((t (:foreground "HotPink3" :bold t))))
     (gnus-group-mail-2-empty-face ((t (:foreground "HotPink3"))))
     (gnus-group-mail-3-face ((t (:foreground "magenta4" :bold t))))
     (gnus-group-mail-3-empty-face ((t (:foreground "magenta4"))))
     (gnus-group-mail-low-face ((t (:foreground "DeepPink4" :bold t))))
     (gnus-group-mail-low-empty-face ((t (:foreground "DeepPink4"))))
     (gnus-summary-selected-face ((t (:underline t))))
     (gnus-summary-cancelled-face ((t (:foreground "yellow" :background "black"))))
     (gnus-summary-high-ticked-face ((t (:foreground "firebrick" :bold t))))
     (gnus-summary-low-ticked-face ((t (:foreground "firebrick" :italic t))))
     (gnus-summary-normal-ticked-face ((t (:foreground "firebrick"))))
     (gnus-summary-high-ancient-face ((t (:foreground "RoyalBlue" :bold t))))
     (gnus-summary-low-ancient-face ((t (:foreground "RoyalBlue" :italic t))))
     (gnus-summary-normal-ancient-face ((t (:foreground "RoyalBlue"))))
     (gnus-summary-high-unread-face ((t (:bold t))))
     (gnus-summary-low-unread-face ((t (:italic t))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-high-read-face ((t (:foreground "DarkGreen" :bold t))))
     (gnus-summary-low-read-face ((t (:foreground "DarkGreen" :italic t))))
     (gnus-summary-normal-read-face ((t (:foreground "DarkGreen"))))
     (gnus-splash-face ((t (:foreground "ForestGreen"))))
     (gnus-emphasis-bold ((t (:bold t))))
     (gnus-emphasis-italic ((t (:italic t))))
     (gnus-emphasis-underline ((t (:underline t))))
     (gnus-emphasis-underline-bold ((t (:bold t :underline t))))
     (gnus-emphasis-underline-italic ((t (:italic t :underline t))))
     (gnus-emphasis-bold-italic ((t (:bold t :italic t))))
     (gnus-emphasis-underline-bold-italic ((t (:bold t :italic t :underline t))))
     (gnus-signature-face ((t (:foreground "white"))))
     (gnus-cite-face-1 ((t (:foreground "Khaki"))))
     (gnus-cite-face-2 ((t (:foreground "Coral"))))
     (gnus-cite-face-3 ((t (:foreground "#4186be"))))
     (gnus-cite-face-4 ((t (:foreground "yellow green"))))
     (gnus-cite-face-5 ((t (:foreground "IndianRed"))))
     (highlight-changes-face ((t (:foreground "red"))))
     (highlight-changes-delete-face ((t (:foreground "red" :underline t))))
     (show-paren-match-face ((t (:foreground "white" :background "purple"))))
     (show-paren-mismatch-face ((t (:foreground "white" :background "red"))))
     (cperl-nonoverridable-face ((t (:foreground "chartreuse3"))))
     (cperl-array-face ((t (:foreground "Blue" :bold t :background "lightyellow2"))))
     (cperl-hash-face ((t (:foreground "Red" :bold t :italic t :background "lightyellow2"))))
     (makefile-space-face ((t (:background "hotpink"))))
     (sgml-start-tag-face ((t (:foreground "mediumspringgreen"))))
     (sgml-ignored-face ((t (:foreground "gray20" :background "gray60"))))
     (sgml-doctype-face ((t (:foreground "orange"))))
     (sgml-sgml-face ((t (:foreground "yellow"))))
     (sgml-end-tag-face ((t (:foreground "greenyellow"))))
     (sgml-entity-face ((t (:foreground "gold"))))
     (flyspell-incorrect-face ((t (:foreground "OrangeRed" :bold t :underline t))))
     (flyspell-duplicate-face ((t (:foreground "Gold3" :bold t :underline t)))))))

(defun color-theme-tty-dark ()
  "Color theme by Oivvio Polite, created 2002-02-01.  Good for tty display."
  (interactive)
  (color-theme-install
   '(color-theme-tty-dark
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "blue")
      (cursor-color . "red")
      (foreground-color . "white")
      (mouse-color . "black"))
     ((ispell-highlight-face . highlight)
      (list-matching-lines-face . bold)
      (tinyreplace-:face . highlight)
      (view-highlight-face . highlight))
     (default ((t (nil))))
     (bold ((t (:underline t :background "black" :foreground "white"))))
     (bold-italic ((t (:underline t :foreground "white"))))
     (calendar-today-face ((t (:underline t))))
     (diary-face ((t (:foreground "red"))))
     (font-lock-builtin-face ((t (:foreground "blue"))))
     (font-lock-comment-face ((t (:foreground "cyan"))))
     (font-lock-constant-face ((t (:foreground "magenta"))))
     (font-lock-function-name-face ((t (:foreground "cyan"))))
     (font-lock-keyword-face ((t (:foreground "red"))))
     (font-lock-string-face ((t (:foreground "green"))))
     (font-lock-type-face ((t (:foreground "yellow"))))
     (font-lock-variable-name-face ((t (:foreground "blue"))))
     (font-lock-warning-face ((t (:bold t :foreground "magenta"))))
     (highlight ((t (:background "blue" :foreground "yellow"))))
     (holiday-face ((t (:background "cyan"))))
     (info-menu-5 ((t (:underline t))))
     (info-node ((t (:italic t :bold t))))
     (info-xref ((t (:bold t))))
     (italic ((t (:underline t :background "red"))))
     (message-cited-text-face ((t (:foreground "red"))))
     (message-header-cc-face ((t (:bold t :foreground "green"))))
     (message-header-name-face ((t (:foreground "green"))))
     (message-header-newsgroups-face ((t (:italic t :bold t :foreground "yellow"))))
     (message-header-other-face ((t (:foreground "#b00000"))))
     (message-header-subject-face ((t (:foreground "green"))))
     (message-header-to-face ((t (:bold t :foreground "green"))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-mml-face ((t (:foreground "green"))))
     (message-separator-face ((t (:foreground "blue"))))

     (modeline ((t (:background "white" :foreground "blue"))))
     (modeline-buffer-id ((t (:background "white" :foreground "red"))))
     (modeline-mousable ((t (:background "white" :foreground "magenta"))))
     (modeline-mousable-minor-mode ((t (:background "white" :foreground "yellow"))))
     (region ((t (:background "white" :foreground "black"))))
     (zmacs-region ((t (:background "cyan" :foreground "black"))))
     (secondary-selection ((t (:background "blue"))))
     (show-paren-match-face ((t (:background "red"))))
     (show-paren-mismatch-face ((t (:background "magenta" :foreground "white"))))
     (underline ((t (:underline t)))))))

(provide 'terminal-color-themes)