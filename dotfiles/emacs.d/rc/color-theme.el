(require 'color-theme)

(eval-after-load 'color-theme
  (progn
    (color-theme-initialize)
    (load "color-theme-sunburst")
    (load "color-theme-tangotango")
    (if window-system
        (color-theme-tangotango)
        (color-theme-hober)
        )))

