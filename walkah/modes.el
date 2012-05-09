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

; yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; jekyll
(require 'jekyll)
(setq jekyll-post-ext ".md")
(setq jekyll-directory (expand-file-name "~/Projects/blog/"))
(setq jekyll-post-template "---\nlayout: post\ntitle: %s\n---\n\n")
(global-set-key (kbd "C-c b d") (lambda () 
                                  (interactive)
                                  (find-file (concat jekyll-directory jekyll-drafts-dir))))

(require 'coffee-mode)
(require 'haml-mode)
(require 'less-css-mode)

; jade templates
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

; flymake
(require 'flymake)
(delete '("\\.html?\\'" flymake-xml-init) flymake-allowed-file-name-masks)

(autoload 'geben "geben" "PHP Debugger on Emacs" t)

; others
(load "walkah/php")
(load "walkah/python")
(load "walkah/javascript")
