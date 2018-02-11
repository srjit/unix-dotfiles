(setq ensime_path "/home/sree/.emacs.d/ensime-server-master")
(setq scala_exec_path "/home/sree/NG/scala-2.10.3/bin/")
(setq sbt_exec_path "/home/sree/NG/sbt")


(setenv "SBT_HOME" "/home/sree/sbt")
(setenv "PATH" (concat (getenv "PATH")) ":$SBT_HOME/bin")
(add-to-list 'load-path ensime_path)
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(push scala_exec_path exec-path)
(push sbt_exec_path exec-path)

;;(require 'flymake-scala)
;;(add-hook 'scala-mode-hook 'flymake-scala-load)


(add-hook 'sbt-mode-hook '(lambda ()
  ;; compilation-skip-threshold tells the compilation minor-mode
  ;; which type of compiler output can be skipped. 1 = skip info
  ;; 2 = skip info and warnings.
  (setq compilation-skip-threshold 1)

  ;; Bind C-a to 'comint-bol when in sbt-mode. This will move the
  ;; cursor to just after prompt.
  (local-set-key (kbd "C-a") 'comint-bol)

  ;; Bind M-RET to 'comint-accumulate. This will allow you to add
  ;; more than one line to scala console prompt before sending it
  ;; for interpretation. It will keep your command history cleaner.
  (local-set-key (kbd "M-RET") 'comint-accumulate)))




(add-hook 'scala-mode-hook '(lambda ()
   ;; sbt-find-definitions is a command that tries to find (with grep)
   ;; the definition of the thing at point.
   (local-set-key (kbd "M-.") 'sbt-find-definitions)

   ;; use emacs M-x next-error to navigate errors
   (local-set-key (kbd "M-'") 'next-error)

   (local-set-key (kbd "C-c C-c") 'sbt-send-region)
   ;; use sbt-run-previous-command to re-compile your code after changes
   (local-set-key (kbd "C-x '") 'sbt-run-previous-command)))


;; (load-file "/home/sree/.emacs.d/elpa/flymake-scala-20131028/flymake-scala.el")
;; (require 'flymake-scala)
;; (add-hook 'scala-mode-hook 'flymake-scala-load)



;#############################################
;To load python templates
(add-hook 'find-file-hooks 'maybe-load-template)
(defun maybe-load-template ()
  (interactive)
  (when (and
	 (string-match "\\.scala$" (buffer-file-name))
	 (eq 1 (point-max)))
    (insert-file "~/.emacs.d/templates/scala-template.txt")))


;;(setq ensime-completion-style 'auto-complete)
