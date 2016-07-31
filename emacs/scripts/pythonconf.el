
(setq username (getenv "USER"))

;; Download Jedi Starter from
;; https://github.com/wernerandrew/jedi-starter
;; and put it in ~/.emacs.d
;; run sudo ./setup.sh
(load-file "/home/sree/.emacs.d/jedi-starter/jedi-starter.el")

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


(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)

(defun ipython ()
  (interactive)
  (term "/usr/bin/ipython"))

;;(add-hook 'python-mode-hook 'highlight-indentation)
(add-to-list 'load-path (concat "/home/" username "/.emacs.d/elpa/elpy-20150502.740"))
(add-to-list 'load-path "~/.emacs.d/elpa/ipython-2927/")


;; tags for a file
(add-to-list 'load-path "~/.emacs.d/scripts/taglist.el")
(global-set-key (kbd "C-h") 'taglist)


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


;; install pyflakes via : sudo aptitude install pyflakes

(load-file (concat "/home/" username "/.emacs.d/elpa/flymake-cursor-20130822.332/flymake-cursor.el"))
(global-set-key [f4] 'flymake-goto-next-error)

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
	   (local-file (file-relative-name
			temp-file
			(file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
	       '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)



;;#############################################
;;To load python templates
(add-hook 'find-file-hooks 'maybe-load-template)
(defun maybe-load-template ()
  (interactive)
  (when (and
	 (string-match "\\.py$" (buffer-file-name))
	 (eq 1 (point-max)))
    (insert-file "~/.emacs.d/templates/python-template.py")))




