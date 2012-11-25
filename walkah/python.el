(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(require 'pony-mode)

(defun walkah/python-mode-init ()
  (set-variable 'py-smart-indentation t)
  (set-variable 'indent-tabs-mode nil)
  )

(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
