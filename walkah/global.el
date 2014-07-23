(column-number-mode 1)
(setq-default fill-column 72)
(setq-default tab-width 2)
(setq auto-fill-mode 1)
(show-paren-mode 1)
(prefer-coding-system 'utf-8)

(setq scroll-step 1)
(setq inhibit-startup-message t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq ring-bell-function #'ignore)

(setq next-line-add-newlines nil)

(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)

(display-time)

(setq-default indent-tabs-mode nil)
(setq mouse-yank-at-point t)
(set-scroll-bar-mode 'right)

(electric-pair-mode 1)
