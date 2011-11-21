; theme
(require 'color-theme)
(require 'color-theme-solarized)
(setq color-theme-is-global t)

(color-theme-solarized-light)

(custom-set-faces
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green"))))

; Make inconsolata work on mac
(when (featurep 'ns-win)
  (custom-set-faces
   '(default ((t (:height 140 :width normal :family "Inconsolata")))))
  )