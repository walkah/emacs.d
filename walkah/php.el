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
(add-to-list 'auto-mode-alist '("\\.\\(inc\\|module\\|test\\|install\\|theme\\|engine\\|schema\\|profile\\)$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))

(defun walkah/php-mode-init ()
   "Set some buffer-local variables."
   (c-add-style "php-drupal" php-drupal-style t)
   (c-add-style "php-pear" php-pear-style t)
   (setq fill-column 78)
   (setq comment-style 'box-multi)
   (setq indent-tabs-mode nil)
   (setq truncate-lines t)
   (define-key c-mode-map "\C-m" 'newline-and-indent)

   ; code sniffer - to assure coding standards compliance
   (set (make-local-variable 'compile-command)
        (format "phpcs --report=emacs --standard=PEAR %s"
                (buffer-file-name))))
(add-hook 'php-mode-hook 'walkah/php-mode-init)
(add-hook 'php-mode-hook 'flymake-php-load)
