
;; Mark current word 
(defun my-mark-current-word (&optional arg allow-extend)
  "Put point at beginning of current word, set mark at end."
  (interactive "p\np")
  (setq arg (if arg arg 1))
  (if (and allow-extend
	   (or (and (eq last-command this-command) (mark t))
	       (region-active-p)))
      (set-mark
       (save-excursion
	 (when (< (mark) (point))
	   (setq arg (- arg)))
	 (goto-char (mark))
	 (forward-word arg)
	 (point)))
    (let ((wbounds (bounds-of-thing-at-point 'word)))
      (unless (consp wbounds)
	(error "No word at point"))
      (if (>= arg 0)
	  (goto-char (car wbounds))
	(goto-char (cdr wbounds)))
      (push-mark (save-excursion
		   (forward-word arg)
		   (point)))
              (activate-mark))))



(setq-default
 whitespace-line-column 100
 whitespace-style       '(face lines-tail))


(add-hook 'prog-mode-hook #'whitespace-mode)
