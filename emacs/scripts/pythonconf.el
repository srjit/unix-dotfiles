;; ;;Python
;; (load-file "/home/sree/.emacs.d/emacs-for-python-master_new/epy-init.el")
;; (load-file "/home/sree/.emacs.d/jedi-starter/jedi-starter.el")
;; (add-to-list 'load-path "/home/sree/.emacs.d/emacs-for-python-master")


;; (require 'epy-python)     ;; If you want the python facilities [optional]
;; (require 'epy-completion) ;; If you want the autocompletion settings [optional]
;; (require 'epy-editing)    ;; For configurations related to editing [optional]
;; (require 'epy-bindings)   ;; For my suggested keybindings [optional]
;; (require 'epy-nose)       ;; For nose integration
;;(epy-setup-ipython)
;;(require 'pymacs)

;;(add-hook 'python-mode-hook 'highlight-indentation)

;; Load iPython
(setq ipython-command "~/.emacs.d/elpa/ipython-2927/ipython")

(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"
	python-shell-interpreter-args "--simple-prompt -i")
  )


(defun ipython ()
  (interactive)
  (term "/usr/bin/ipython3"))

;; Indentation for python
;; Ignoring electric indentation
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for python-mode"
  (if (equal major-mode 'python-mode)
      'no-indent
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)

;; (require 'jedi)
;; (add-hook 'python-mode-hook 'jedi:setup)



;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent'"
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)

(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)


					;#############################################
					;To load python templates
(add-hook 'find-file-hooks 'maybe-load-template)
(defun maybe-load-template ()
  (interactive)
  (when (and
	 (string-match "\\.py$" (buffer-file-name))
	 (eq 1 (point-max)))
    (insert-file "~/.emacs.d/templates/python-template.py")))



;; Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
(require 'pymacs)


(eval-after-load "python"
  '(define-key python-mode-map [(control c)(kbd "RET")] 'python-shell-send-region))

(setq yas-snippet-dirs "/home/sree/.emacs.d/elpa/yasnippet-20150415.244/snippets")

;;(elpy-enable)


;; (add-hook 'python-mode-hook
;; 	  (lambda ()
;; 	    (setq-default indent-tabs-mode t)
;; 	    (setq-default tab-width 8)
;; 	    (setq-default py-indent-tabs-mode t)
;; 	    (add-to-list 'write-file-functions 'delete-trailing-whitespace)))



;;(global-set-key (kbd "C-c e") 'flymake-display-err-menu-for-current-line)

(add-hook 'python-mode-hook 'elpy-mode)
(add-hook 'python-mode-hook 'flycheck-mode)
;; (add-hook 'python-mode-hook 'highlight-indentation-mode)
;; (add-hook 'python-mode-hook 'flymake-mode)


;;(setq python-python-command "/usr/bin/python3")

;; (setq path-to-ctags "/usr/bin/ctags") 

;; (defun create-tags (dir-name)
;;   "Create tags file."
;;   (interactive "DDirectory: ")
;;   (eshell-command 
;;    (format "find %s -type f -name \"*.[py]\" | etags -" dir-name)))

(global-set-key (kbd "C-c e") 'flycheck-display-error-at-point)

;; (setq companymode t)
;; (setq company-idle-delay 0)
