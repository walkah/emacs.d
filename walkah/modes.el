; textmate
(require 'textmate)
(textmate-mode)

; yasnippet
(require 'yasnippet) 
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

; magit
(autoload 'magit-status "magit" nil t)

(autoload 'jade-mode "jade" nil t)

; others
(load "walkah/php")
(load "walkah/python")
(load "walkah/javascript")