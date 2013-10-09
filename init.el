;; walkah's init.el

; library paths
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(with-temp-buffer
  (cd "~/.emacs.d/vendor/")
  (normal-top-level-add-subdirs-to-load-path))

; custom 
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))

; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "walkah/global")
(load "walkah/defuns")
(load "walkah/bindings")
(load "walkah/modes")
(load "walkah/theme")
