(add-to-list 'load-path "~/.emacs.d/lisp/")

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

;; Twitter integration
(autoload 'twittering-mode  "twittering-mode" "twittering-mode" t)
(setq twittering-use-master-password t)
(setq twittering-icon-mode t)

;; open recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; set initial scratch message to null
(setq initial-scratch-message "")

;;delete files recursively without confirmation
(setq dired-recursive-deletes 'always)

;; Scala functions disabled

;; load the ensime lisp code...
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/dash-20150311.2355")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/ensime-emacs-master")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/auto-complete-20150408.1132")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/popup-20141002.320")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/s-20140910.334")
(add-to-list 'load-path "~/.emacs.d/elpa/scala-mode2-20150617.2350/")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/company-20150417.1334")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/yasnippet-20150405.1526")
(add-to-list 'load-path "/home/sree/.emacs.d/elpa/sbt-mode-20141110.1116")
;;(require 'sbt-mode)
;;(require 'ensime)


;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;(push "/home/sree/NG/scala-2.10.3/bin/" exec-path)
;;(push "/home/sree/sbt" exec-path)

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


(add-to-list 'load-path "/home/sree/.emacs.d/jdee-2.4.1/lisp")
;;(load "jde")
(define-key global-map (kbd "RET") 'newline-and-indent) 


(require 'gnus-demon)
(gnus-demon-add-handler 'gnus-demon-scan-news 15 nil)


(setq dired-dwim-target t)

(setq view-diary-entries-initially t
       mark-diary-entries-in-calendar t
       number-of-diary-entries 7)
 (add-hook 'diary-display-hook 'fancy-diary-display)
 (add-hook 'today-visible-calendar-hook 'calendar-mark-today)
 (add-hook 'list-diary-entries-hook 'sort-diary-entries t)


;; Journal
(setq journal-ext ".gpg") 
;;(load "journal")





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

(load-file "/home/sree/.emacs.d/emacs-for-python-master/epy-init.el")
(add-to-list 'load-path "/home/sree/.emacs.d/emacs-for-python-master")
(require 'epy-setup)      ;; It will setup other loads, it is required!                                                                                                 
(require 'epy-python)     ;; If you want the python facilities [optional]                                                                                               
(require 'epy-completion) ;; If you want the autocompletion settings [optional]                                                                                         
(require 'epy-editing)    ;; For configurations related to editing [optional]                                                                                           
(require 'epy-bindings)   ;; For my suggested keybindings [optional]                                                                                                    
(require 'epy-nose)       ;; For nose integration                                                                                                                       

(epy-setup-ipython)
(global-hl-line-mode t) ;; To enable                                                                                                                                    
;;(set-face-background 'hl-line "white") ;; change with the color that you like""))

(global-hl-line-mode 1)
(set-face-background 'highlight "#222")
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)
(electric-pair-mode t)

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)


(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))


(defun ipython ()
    (interactive)
    (term "/usr/bin/ipython"))







(defun my-format-python-text ()
  "untabify and wrap python comments"
  (interactive)
  (untabify (point-min) (point-max))
  (goto-char (point-min))
  (while (re-search-forward comment-start nil t)
    (call-interactively 'fill-paragraph)
    (forward-line 1)))

(eval-after-load "python"
  '(progn
     (define-key python-mode-map (kbd "RET") 'newline-and-indent)
     (define-key python-mode-map (kbd "<f4>") 'my-format-python-text)))


(setq fill-column 79)
(setq-default tab-width 2)
