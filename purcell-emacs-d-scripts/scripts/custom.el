;; ;; set keybindings
(load-file "~/.emacs.d/scripts/keybindings.el")
(put 'dired-find-alternate-file 'disabled nil)

;; (load-file "~/.emacs.d/scripts/styling.el")
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

(require 'dashboard)
(dashboard-setup-startup-hook)


(setq dashboard-banner-logo-title "Welcome to Emacs")
(setq dashboard-startup-banner "/Users/d107520/.emacs.d/scripts/gnu.png")
(setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)
(load-file "~/.emacs.d/scripts/orgmode.el")


(setq dashboard-items '((recents  . 8)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)


(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
;; note that setting `venv-location` is not necessary if you
;; use the default location (`~/.virtualenvs`), or if the
;; the environment variable `WORKON_HOME` points to the right place
(setq venv-location "/Users/d107520/venvs/")

(provide 'custom)
;;;  custom.el ends here
