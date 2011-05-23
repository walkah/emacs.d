; textmate
(require 'textmate)
(textmate-mode)

; markdown
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

; yasnippet
(require 'yasnippet) 
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")

; magit
(autoload 'magit-status "magit" nil t)

; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

; ispell
(setq ispell-program-name "aspell")
(setq ispell-list-command "list")
(setq ispell-extra-args '("--sug-mode=ultra"))

; jade templates
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . sws-mode))

; others
(load "walkah/php")
(load "walkah/python")
(load "walkah/javascript")