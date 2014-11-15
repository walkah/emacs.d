(require 'rvm)
(rvm-use-default) 

(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(add-hook 'scss-mode-hook 'flymake-sass-load)
(setq ruby-deep-indent-paren nil)

(setq scss-compile-at-save nil)
