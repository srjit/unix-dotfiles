p;; BigMoster's custom keybindings

(defun remap-up-key-in-shell ()
  (local-set-key (kbd "<up>") 'comint-previous-input))
(global-set-key (kbd "C-x <up>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <down>") 'next-multiframe-window)
;; open recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;Duplicate lines
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )
(global-set-key (kbd "C-t") 'duplicate-line)


(define-key global-map (kbd "RET") 'newline-and-indent)
(setq dired-dwim-target t)


;; Moving text around Up and Down
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
	(exchange-point-and-mark))
    (let ((column (current-column))
	  (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (beginning-of-line)
    (when (or (> arg 0) (not (bobp)))
      (forward-line)
      (when (or (< arg 0) (not (eobp)))
	(transpose-lines arg))
      (forward-line -1)))))


(defun move-text-down (arg)
       "Move region (transient-mark-mode active) or current line
  arg lines down."
       (interactive "*p")
       (move-text-internal arg))


(defun move-text-up (arg)
       "Move region (transient-mark-mode active) or current line
  arg lines up."
       (interactive "*p")
       (move-text-internal (- arg)))

(global-set-key [\M-\S-up] 'move-text-up)
(global-set-key [\M-\S-down] 'move-text-down)




(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)


(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(global-set-key (kbd "C-g") 'fiplr-find-file)
(global-set-key (kbd "C-x f") 'project-explorer-open)
(global-set-key (kbd "C-x .") 'next-buffer)
(global-set-key (kbd "C-x ,") 'previous-buffer)
