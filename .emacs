(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "a233249cc6f90098e13e555f5f5bf6f8461563a8043c7502fb0474be02affeea" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b7d8113de2f7d9a3cf42335d8eed8415b5a417e7f6382e59076f9f4ae4fa4cee" "367063ee6147a21d972640cbf7051a74d931b666b7792cfb1536146191103cf4" default)))
 '(custom-theme-directory "/home/sree/.emacs.d/elpa")
 '(custom-theme-load-path
   (quote
    ("/home/sree/.emacs.d/elpa" "~/.emacs.d/themes" custom-theme-directory t)))
 '(gnus-inhibit-user-auto-expire t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(linum-format " %5i "))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(global-linum-mode t)

(put 'set-goal-column 'disabled nil)

;; add classpath for scripts
(add-to-list 'load-path "/home/sree/Dropbox/emacs/scripts")

;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; add color identifiers mode
;;(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; copy paste between applications and emacs
(setq x-select-enable-clipboard t)

;; repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))



(defun remap-up-key-in-shell ()
  (local-set-key (kbd "<up>") 'comint-previous-input))

(add-hook 'shell-mode-hook 'remap-up-key-in-shell)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)


(global-set-key (kbd "C-x <up>") 'previous-multiframe-window)
(global-set-key (kbd "C-x <down>") 'next-multiframe-window)

;; font options
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Consolas-11"))
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)



;; open recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; set initial scratch message to null
(setq initial-scratch-message "")

;;delete files recursively without confirmation
(setq dired-recursive-deletes 'always)

;;Duplicate lines
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )
(global-set-key (kbd "C-d") 'duplicate-line)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(define-key global-map (kbd "RET") 'newline-and-indent)
(setq dired-dwim-target t)





(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
	(exchange-point-and-mark))
    (let ((column (current-column))
	  (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (beginning-of-line)
    (when (or (> arg 0) (not (bobp)))
      (forward-line)
      (when (or (< arg 0) (not (eobp)))
	(transpose-lines arg))
      (forward-line -1)))))


(defun move-text-down (arg)
       "Move region (transient-mark-mode active) or current line
  arg lines down."
       (interactive "*p")
       (move-text-internal arg))


(defun move-text-up (arg)
       "Move region (transient-mark-mode active) or current line
  arg lines up."
       (interactive "*p")
       (move-text-internal (- arg)))

(global-set-key [\M-\S-up] 'move-text-up)
(global-set-key [\M-\S-down] 'move-text-down)

;;Python

(load-file "/home/cloudera/.emacs.d/emacs-for-python-master/epy-init.el")
(add-to-list 'load-path "/home/cloudera/.emacs.d/emacs-for-python-master")
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
(epy-setup-ipython)
(require 'pymacs)
(add-hook 'python-mode-hook 'highlight-indentation)


;; Highlight the current line and keep an underline on the current line where i am in
(global-hl-line-mode 1)
(set-face-background 'highlight "#222")
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)
(electric-pair-mode t)

;; Load iPython
(setq ipython-command "~/.emacs.d/elpa/ipython-2927/ipython")


(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)


(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))


(defun ipython ()
  (interactive)
  (term "/usr/bin/ipython"))



;; Load python helpers/formatters and all
;;(pymacs-load "ropemacs" "rope-")
(add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'load-path "/home/cloudera/.emacs.d/elpa/elpy-20150502.740")
(add-to-list 'load-path "~/.emacs.d/elpa/ipython-2927/")
(setq magit-auto-revert-mode nil)


;; Load xml formatter and stuff
(load-file "/home/cloudera/.emacs.d/custom/xml-parse.el")
(if (file-exists-p "~/.emacs.d/packages/xml-parse.el")
      (let ((load-path load-path))
	    (add-to-list 'load-path "~/.emacs.d/packages")
	        (require 'xml-parse)))

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20150618.1949/")
(load-file "/home/cloudera/.emacs.d/elpa/ess-20150622.413/ess-autoloads.el")
(load-file "/home/cloudera/.emacs.d/elpa/auto-complete-20150618.1949/auto-complete-acr.el")

;; Magit - kill un-necessary warnings
(setq magit-auto-revert-mode nil)
(setq make-backup-files nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;; Loading ESS (Emacs Speaks Statistics) into emacs
;;(add-to-list 'load-path "/home/cloudera/.emacs.d/elpa/ess-20150622.413")
;; Loading R mode by default
(autoload 'R-mode "ess-site.el" "ESS" t)
(add-to-list 'auto-mode-alist '("\\.R\\'" . R-mode))



;; auto-complete
(require 'yasnippet)
(require 'popup)

(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

(set-default 'ac-sources
	     '(ac-source-abbrev
	       ac-source-dictionary
	       ac-source-yasnippet
	       ac-source-words-in-buffer
	       ac-source-words-in-same-mode-buffers
	       ac-source-semantic))

(load-file "/home/cloudera/.emacs.d/custom/auto-complete-acr.el")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/cloudera/.emacs.d/elpa/auto-complete-20150618.1949/dict")


;;(load "auto-complete")
(global-auto-complete-mode)
(setq ess-use-auto-complete t)

(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

(ac-set-trigger-key "TAB")


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
      (setq this-command 'ess-readline))
(global-set-key (kbd "\C-cp") 'ess-readline)

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

