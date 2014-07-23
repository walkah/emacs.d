; make sure emacs on OS X gets my full shell $PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; textmate
(textmate-mode)

; auto-complete
(require 'auto-complete)
;(add-to-list 'ac-dictionary-directories (concat ac-directory "ac-dict"))
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode 1)

; toggle-quotes
(require 'toggle-quotes)
(global-set-key (kbd "C-'") 'toggle-quotes)

; markdown
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

; yasnippet
(require 'yasnippet)
(yas/global-mode 1)

; magit
(setq magit-diff-use-overlays nil)
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

; puppet mode
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

; others
(load "walkah/javascript")
(load "walkah/php")
(load "walkah/python")
(load "walkah/ruby")
