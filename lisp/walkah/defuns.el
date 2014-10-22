(defun walkah/nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
	  (buffer-list))
  (delete-other-windows))

(defun walkah/toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))


(defun walkah/replace-string-pairs-region (start end mylist)
  "Replace string pairs in region."
  (save-restriction 
    (narrow-to-region start end)
    (mapc
     (lambda (arg)
       (goto-char (point-min)) 
       (while (search-forward (car arg) nil t) (replace-match (cadr arg)) )
       ) mylist)))

(defun walkah/replace-html-chars (start end)
  "Encode HTML chars &, < and >"
  (interactive "r")
  (walkah/replace-string-pairs-region start end 
                                      '(
                                        ("&" "&amp;")
                                        ("<" "&lt;")
                                        (">" "&gt;")
                                        )
                                      ))

