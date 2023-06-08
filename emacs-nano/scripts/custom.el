;; ;; set keybindings
(load-file "~/.emacs.d/scripts/keybindings.el")
;; (load-file "~/.emacs.d/scripts/elegance.el")

(load-file "~/.emacs.d/scripts/fira-code-mode.el")
(load-file "~/.emacs.d/scripts/styling.el")
(load-file "~/.emacs.d/scripts/orgmode.el")



(put 'scroll-left 'disabled nil)


(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
;; (package-initialize)
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/")
;;              '("melpa-stable" . "https://stable.melpa.org/packages/"))


(setq user-full-name "Sreejith Sreekumar")
(setq user-mail-address "sreejith2904@gmail.com")

(add-hook 'python-mode-hook 'fira-code-mode)
(xclip-mode 1)
;; (undo-tree-mode 1)

;; (require 'undo-tree)
(setenv "SHELL" "/bin/zsh")
(setq shell-file-name "/bin/zsh")

(defun ipython ()
  (interactive)
  (term "/Users/sreejithsreekumar/venvs/mllib2/bin/ipython"))
(setq python-shell-interpreter "/Users/sreejithsreekumar/venvs/mllib2/bin/ipython")



(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location "~/venvs")

(setq company-idle-delay 0)
(setq recentf-max-menu-items 10)

(load-file "~/.emacs.d/scripts/orgmode.el")

(getenv "PATH")
 (setenv "PATH"
(concat
 "/Library/TeX/texbin/" ":"

(getenv "PATH")))



;; (load-file "~/.emacs.d/scripts/nano-sidebar.el")
;; (load-file "~/.emacs.d/scripts/nano-sidebar-ibuffer.el")

;; Uncomment the line below to enable jupyter notebook via org mode
;; (load-file "~/.emacs.d/scripts/ob-jupyter.el") 
;; (load-file "~/.emacs.d/scripts/org-ipython.el") 



(setq initial-major-mode 'org-mode)

(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append
         (split-string-and-unquote path ":")
         exec-path)))


(global-undo-tree-mode 1)

(setenv "PATH" "/opt/local/bin/:/usr/local/bin:/Library/TeX/texbin/:$PATH" t)


;; E-Mail


;; (setq load-prefer-newer t)
;; (setq mu4e-mu-binary "/opt/homebrew/bin/mu")
;; (add-to-list 'load-path "/opt/homebrew/Cellar/mu/1.8.6/share/emacs/site-lisp/mu/mu4e")
;; (require 'mu4e)

;; (load-file "~/.emacs.d/scripts/mu4e-thread-folding.el")
;; (require 'mu4e-thread-folding)

;; (add-to-list 'mu4e-header-info-custom
;;              '(:empty . (:name "Empty"
;;                          :shortname ""
;;                          :function (lambda (msg) "  "))))
;; (setq mu4e-headers-fields '((:empty         .    2)
;;                             (:human-date    .   12)
;;                             (:flags         .    6)
;;                             (:mailing-list  .   10)
;;                             (:from          .   22)
;;                             (:subject       .   nil)))


;; (define-key mu4e-headers-mode-map (kbd "<tab>")     'mu4e-headers-toggle-at-point)
;; (define-key mu4e-headers-mode-map (kbd "<left>")    'mu4e-headers-fold-at-point)
;; (define-key mu4e-headers-mode-map (kbd "<S-left>")  'mu4e-headers-fold-all)
;; (define-key mu4e-headers-mode-map (kbd "<right>")   'mu4e-headers-unfold-at-point)
;; (define-key mu4e-headers-mode-map (kbd "<S-right>") 'mu4e-headers-unfold-all)



;; SQL Stuff

(setq sql-mysql-program "/opt/homebrew/bin/mysql")
(setq sql-user "sreejith")
(setq sql-password "password")
(setq sql-database "study")
(setq sql-server "localhost")


;; for latex previews
(texfrag-global-mode t)


;; Mail
;; (add-to-list 'load-path "/opt/homebrew/Cellar/mu/1.8.13/share/emacs/site-lisp/mu/mu4e")
;; (require 'mu4e)
;; (load-file "/Users/sreejithsreekumar/software/mu4e-dashboard/mu4e-dashboard.el")
;; (load-file "/Users/sreejithsreekumar/.emacs.d/scripts/mu4e-thread-folding.el")
;; (mu4e-thread-folding-mode t)




(use-package solarized-theme
  :config
  (load-theme 'solarized-light t)
  (let ((line (face-attribute 'mode-line :underline)))
    (set-face-attribute 'mode-line          nil :overline   line)
    ;; (set-face-attribute 'mode-line-inactive nil :overline   line)
    ;; (set-face-attribute 'mode-line-inactive nil :underline  line)
    ;; (set-face-attribute 'mode-line          nil :box        nil)
    ;; (set-face-attribute 'mode-line-inactive nil :box        nil)
    (set-face-attribute 'mode-line-inactive nil :background "#f9f2d9")))

(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (moody-replace-eldoc-minibuffer-message-function))


(provide 'custom)
;;;  custom.el ends here
 


