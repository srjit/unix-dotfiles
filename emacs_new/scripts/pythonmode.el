(elpy-enable)

;; enable projectile for python mode
(add-hook 'python-mode-hook 'projectile-mode)


;;Template for Python files
(defun maybe-load-template ()
  (interactive)
  (when (and
	 (string-match "\\.py$" (buffer-file-name))
	 (eq 1 (point-max)))
    (insert-file "~/.emacs.d/templates/python-template.py")))


;; jedi for python
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
