;; key bindings

; delete like you'd expect
(global-set-key [delete] `backward-delete-char)

; make home/end work on a line basis
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

; use these a lot
(global-set-key [f3] 'query-replace)
(global-set-key [f4] 'imenu)
(global-set-key [f8] 'set-variable)
(global-set-key [f11] 'toggle-fullscreen)

(global-set-key "\M-g" 'goto-line)

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)

(setq projectile-keymap-prefix (kbd "s-p"))
(setq projectile-rails-keymap-prefix (kbd "s-r"))

(global-set-key "\C-cd" 'dash-at-point)

(global-set-key (kbd "C-'") 'toggle-quotes)
