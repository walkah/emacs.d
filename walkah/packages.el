; packages
(require 'package)

(defun require-package (package &optional min-version no-refresh)
  "Ask elpa to install given PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

; add additional archives
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)
(require-package 'exec-path-from-shell)
(require-package 'magit)
(require-package 'color-theme-solarized)
(require-package 'textmate)

(require-package 'markdown-mode)
(require-package 'yasnippet)

(require-package 'js2-mode)
(require-package 'jade-mode)
(require-package 'coffee-mode)
(require-package 'flymake-coffee)
(require-package 'less-css-mode)

(require-package 'ruby-mode)
(require-package 'flymake-ruby)
(require-package 'rvm)
(require-package 'rinari)
(require-package 'yaml-mode)
(require-package 'haml-mode)
(require-package 'flymake-haml)
(require-package 'sass-mode)
(require-package 'flymake-sass)

(require-package 'python-mode)
(require-package 'flymake-python-pyflakes)
(require-package 'pony-mode)

(require-package 'php-mode)
(require-package 'flymake-php)
(require-package 'geben)
