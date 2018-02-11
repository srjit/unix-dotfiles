(load-file "/home/sree/.emacs.d/elpa/ess-20150622.413/ess-autoloads.el")
;; Loading ESS (Emacs Speaks Statistics) into emacs
;;(add-to-list 'load-path "/home/sree/.emacs.d/elpa/ess-20150622.413")
;; Loading R mode by default
(autoload 'R-mode "ess-site.el" "ESS" t)
(add-to-list 'auto-mode-alist '("\\.R\\'" . R-mode))

;;(setq ess-use-auto-complete t)

;; set ctrl + up arrow for command history in ess console
(defun ess-readline ()
    "Move to previous command entered from script *or* R-process and copy
   to prompt for execution or editing"
    (interactive)
    ;; See how many times function was called
    (if (eq last-command 'ess-readline)
	(setq ess-readline-count (1+ ess-readline-count))
      (setq ess-readline-count 1))
    ;; Move to prompt and delete current input
    (comint-goto-process-mark)
    (end-of-buffer nil) ;; tweak here
    (comint-kill-input)
    ;; Copy n'th command in history where n = ess-readline-count
    (comint-previous-prompt ess-readline-count)
    (comint-copy-old-input)
    ;; Below is needed to update counter for sequential calls
    (setq this-command 'ess-readline)
    )
(global-set-key (kbd "\C-cp") 'ess-readline)


(setq ess-use-auto-complete 'script-only)



(setq ess-R-font-lock-keywords
    '((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers)
     (ess-fl-keyword:operators)
     (ess-fl-keyword:delimiters)
     (ess-fl-keyword:=)
     (ess-R-fl-keyword:F&T)
     (ess-R-fl-keyword:%op%)))






(require 'flycheck)
(add-hook 'ess-mode-hook 'turn-on-pretty-mode)




;;; MARKDOWN
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; R modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
