(require 'rvm)
(rvm-use-default)

(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))

(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(require 'rinari)

(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(add-hook 'haml-mode-hook 'flymake-haml-load)
(add-hook 'sass-mode-hook 'flymake-sass-load)
(setq ruby-deep-indent-paren nil)

