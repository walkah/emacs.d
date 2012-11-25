; make sure emacs on OS X gets my full shell $PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; textmate
(textmate-mode)

; markdown
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

; yasnippet
(require 'yasnippet)
(yas/global-mode 1)

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
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; jekyll
(require 'jekyll)
(setq jekyll-post-ext ".md")
(setq jekyll-directory (expand-file-name "~/Projects/blog/"))
(setq jekyll-post-template "---\nlayout: post\ntitle: %s\n---\n\n")
(global-set-key (kbd "C-c b d") (lambda () 
                                  (interactive)
                                  (find-file (concat jekyll-directory jekyll-drafts-dir))))

; jade templates
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

; flymake
(require 'flymake)
(setq flymake-gui-warnings-enabled nil)

(autoload 'geben "geben" "PHP Debugger on Emacs" t)

; others
(load "walkah/javascript")
(load "walkah/php")
(load "walkah/python")
(load "walkah/ruby")
