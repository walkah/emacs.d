; php mode (http://php-mode.sf.net/)

(require 'php-mode)
(require 'drupal-mode)
(autoload 'geben "geben" "PHP Debugger on Emacs" t)

(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))

(add-hook 'php-mode-hook 'flymake-php-load)
