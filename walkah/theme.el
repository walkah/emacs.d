; theme
(require 'color-theme)
(require 'color-theme-solarized)
(setq color-theme-is-global t)

(color-theme-solarized-dark)

(custom-set-faces
 '(flymake-errline ((t :underline "red")))
 '(flymake-warnline ((t :underline "green")))
 '(magit-header ((t :weight bold)))
 '(magit-diff-add ((t :foreground "green")))
 '(magit-diff-del ((t :foreground "red")))) 


; Make inconsolata work on mac
(when (featurep 'ns-win)
  (custom-set-faces
   '(default ((t (:height 140 :width normal :family "Inconsolata")))))
  )
