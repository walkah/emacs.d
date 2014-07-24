; make sure emacs on OS X gets my full shell $PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; projectile
(projectile-global-mode)
(setq projectile-switch-project-action 'projectile-vc)

; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode 1)

; toggle-quotes
(require 'toggle-quotes)
(global-set-key (kbd "C-'") 'toggle-quotes)

; markdown
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(add-hook 'markdown-mode-hook 'flyspell-mode)

; yasnippet
(require 'yasnippet)
(yas/global-mode 1)

; magit
(setq magit-diff-use-overlays nil)
(autoload 'magit-status "magit" nil t)

; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

; yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; jade templates
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

; flymake
(require 'flymake)
(setq flymake-gui-warnings-enabled nil)

; puppet mode
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))

; others
(load "walkah/javascript")
(load "walkah/php")
(load "walkah/python")
(load "walkah/ruby")
