(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.\\(md\\|markdown\\)$" . markdown-mode))

(add-hook 'markdown-mode-hook
   '(lambda()
      (setq markdown-command "maruku --html")
      (setq markdown-italic-underscore t)))
