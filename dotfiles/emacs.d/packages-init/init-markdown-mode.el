(add-to-list 'auto-mode-alist '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))
(add-hook 'markdown-mode-hook
          #'(lambda ()
              (setq markdown-command "kramdown")
              (setq markdown-italic-underscore t)
              (setq markdown-enable-math t)))
