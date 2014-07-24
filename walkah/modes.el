; make sure emacs on OS X gets my full shell $PATH
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

; projectile
(projectile-global-mode)
(setq projectile-switch-project-action 'projectile-vc)

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
