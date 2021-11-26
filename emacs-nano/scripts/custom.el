;; ;; set keybindings
(load-file "~/.emacs.d/scripts/keybindings.el")
(load-file "~/.emacs.d/scripts/elegance.el")

(load-file "~/.emacs.d/scripts/styling.el")
(load-file "~/.emacs.d/scripts/fira-code-mode.el")
(put 'scroll-left 'disabled nil)


(setq user-full-name "Sreejith Sreekumar")
(setq user-mail-address "sreejith2904@gmail.com")

(add-hook 'python-mode-hook 'fira-code-mode)
(xclip-mode 1)
(undo-tree-mode 1)

(require 'undo-tree)
(setenv "SHELL" "/bin/zsh")
(setq shell-file-name "/bin/zsh")

(defun ipython ()
  (interactive)
  (term "/Users/d107520/venvs/mllib/bin/ipython"))
(setq python-shell-interpreter "/Users/d107520/venvs/mllib/bin/ipython")



(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location "/Users/d107520/venvs/")

;; (load-file "~/.emacs.d/scripts/ox-ipynb.el")
;; (display-time-mode 1)
;; (display-battery-mode 1)


(setq company-idle-delay 0)
(setq recentf-max-menu-items 10)

(load-file "~/.emacs.d/scripts/orgmode.el")



;;(require 'org-bullets)
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(provide 'custom)
;;;  custom.el ends here
