
(setq username (getenv "USER"))

;;Python
(load-file (concat "/home/" username "/.emacs.d/emacs-for-python-master/epy-init.el"))
(add-to-list 'load-path (concat "/home/" username "/.emacs.d/emacs-for-python-master"))
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
(epy-setup-ipython)
(require 'pymacs)
;;(add-hook 'python-mode-hook 'highlight-indentation)

;; Load iPython
(setq ipython-command "~/.emacs.d/elpa/ipython-2927/ipython")

(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))


(defun ipython ()
  (interactive)
  (term "/usr/bin/ipython"))

;;(add-hook 'python-mode-hook 'highlight-indentation)
(add-to-list 'load-path (concat "/home/" username "/.emacs.d/elpa/elpy-20150502.740"))
(add-to-list 'load-path "~/.emacs.d/elpa/ipython-2927/")



;; Indentation for python
;; Ignoring electric indentation
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for python-mode"
  (if (equal major-mode 'python-mode)
      'no-indent
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)
;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
 "Map the return key with `newline-and-indent'"
 (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
