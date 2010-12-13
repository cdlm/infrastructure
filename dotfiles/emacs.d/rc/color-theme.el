(require 'color-theme)

(eval-after-load 'color-theme
    (if window-system
        (progn
            (require 'color-theme-tangotango "themes/color-theme-tangotango") ; colorful
            (color-theme-tangotango))
        (progn
            (require 'terminal-color-themes "themes/terminal-color-themes")
            (color-theme-tty-dark))
    ))

