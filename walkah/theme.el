; theme
(require 'color-theme)
(require 'color-theme-solarized)
(setq color-theme-is-global t)

(color-theme-solarized-light)

(custom-set-faces
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green"))))
