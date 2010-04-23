(require 'color-theme)

(eval-after-load 'color-theme
  (progn
    (color-theme-initialize)
    (load "themes/color-theme-tangotango") ; colorful
    (load "themes/zenburn") ; subdued
    (load "themes/color-theme-sunburst") ; black background
    (if window-system
        (color-theme-tangotango)
        ; (color-theme-zenburn)
        (color-theme-hober)
        )))

