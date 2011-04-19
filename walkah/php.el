; php mode (http://php-mode.sf.net/)

(require 'php-mode)

(defconst php-drupal-style
  '(
    (c-basic-offset . 2)
    (c-offsets-alist . ((case-label            . 2)
			(arglist-intro         . +)
			(arglist-cont          . 0)
			(arglist-close         . 0)
			(arglist-cont-nonempty . c-lineup-arglist-intro-after-paren)
			))
    )
  "PHP Style for the Drupal Project")

(defconst php-pear-style
  '(
    (c-basic-offset . 4)
    (c-tab-always-indent . t)
    (c-offsets-alist . ((inline-open . 0)
                        (defun-block-intro . +)
                        (block-open . -)
                        (statement-cont . +)
                        (statement-block-intro . +)
                        (arglist-close . 0)))
    (c-comment-only-line-offset (0 . 0))
    (c-hanging-braces-alist . ((defun-open after)
                               (substatement-open after)))
    (c-cleanup-list . (brace-else-brace brace-elseif-brace))
    )
    "PHP Style for PEAR coding standards")

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
; drupal files
(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\|engine\\|schema\\|profile\\)$" . php-mode))

(defun walkah/php-mode-init ()
   "Set some buffer-local variables."
   (c-add-style "php-drupal" php-drupal-style t)
   (c-add-style "php-pear" php-pear-style t)
   (setq fill-column 78)
   (setq comment-style 'box-multi)
   (setq indent-tabs-mode nil)
   (setq truncate-lines t)
   (define-key c-mode-map "\C-m" 'newline-and-indent)

   (flymake-mode 1)

   ; code sniffer - to assure coding standards compliance
   (set (make-local-variable 'compile-command)
        (format "phpcs --report=emacs --standard=PEAR %s"
                (buffer-file-name))))
(add-hook 'php-mode-hook 'walkah/php-mode-init)

(require 'flymake)
(defun flymake-php-init ()
  "Use php to check the syntax of the current file."
  (let* ((temp (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
	 (local (file-relative-name temp (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local "-l"))))

(add-to-list 'flymake-err-line-patterns
  '("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2))

(add-to-list 'flymake-allowed-file-name-masks '("\\.php$" flymake-php-init))

;; Drupal-type extensions
(add-to-list 'flymake-allowed-file-name-masks '("\\.module$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.install$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.inc$" flymake-php-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.engine$" flymake-php-init))
