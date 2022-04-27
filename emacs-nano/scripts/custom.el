;; ;; set keybindings
(load-file "~/.emacs.d/scripts/keybindings.el")
;;(load-file "~/.emacs.d/scripts/elegance.el")

(load-file "~/.emacs.d/scripts/styling.el")
;; (load-file "~/.emacs.d/scripts/fira-code-mode.el")
(put 'scroll-left 'disabled nil)


(setq user-full-name "Sreejith Sreekumar")
(setq user-mail-address "sreejith2904@gmail.com")

;; (add-hook 'python-mode-hook 'fira-code-mode)
(xclip-mode 1)
(undo-tree-mode 1)

(require 'undo-tree)
(setenv "SHELL" "/bin/zsh")
(setq shell-file-name "/bin/zsh")


(defun ipython ()
  (interactive)
  (term "/Users/sresreek1/venvs/mllib/bin/ipython"))
(setq python-shell-interpreter "/Users/sresreek1/venvs/mllib/bin/ipython")



(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location "/Users/sresreek1/venvs/")


(setq company-idle-delay 0)
(setq recentf-max-menu-items 10)

(global-undo-tree-mode)


(global-hl-line-mode 1)
(set-face-background 'highlight "#222")
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)

;;(setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)


;; Eshell variables have to the the path in zshrc

(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match
that used by the user's shell.

This is particularly useful under Mac OS X and macOS, where GUI
apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string
			  "[ \t\n]*$" "" (shell-command-to-string
					  "$SHELL --login -c 'echo $PATH'"
						    ))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(set-exec-path-from-shell-PATH)


(provide 'custom)
;;;  custom.el ends here
