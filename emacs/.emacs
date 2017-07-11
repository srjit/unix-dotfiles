;;(setq gc-cons-threshold 100000000)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq x-select-enable-clipboard t)

(setq username (getenv "USER"))

;;(add-to-list exec-path "/usr/local/bin")

;; Kill unwanted buffers
(load-file "/home/sree/.emacs.d/scripts/killbuff.el")
;;(load-file "/home/sree/.emacs.d/scripts/sbt.el")

;; custom software
(load-file "/home/sree/.emacs.d/scripts/custom.el")
;;(load-file "/home/sree/.emacs.d/scripts/eww.el")

;; Emacs repositories
(load-file "/home/sree/.emacs.d/scripts/repositories.el")
;;(load-file "/home/sree/.emacs.d/scripts/taglist.el")

;; Language Configuratons
(load-file (concat"/home/sree/.emacs.d/scripts/pythonconf.el"))

(load-file "/home/sree/.emacs.d/scripts/rconf.el")
(load-file "/home/sree/.emacs.d/scripts/git.el")
(load-file "/home/sree/.emacs.d/scripts/xmlconf.el")
(load-file "/home/sree/.emacs.d/scripts/eshell.el")

;;(load-file "/home/sree/.emacs.d/scripts/scalamode.el")
;;(load-file "/home/sree/.emacs.d/scripts/scalamode-flymake.el")


(load-file "/home/sree/.emacs.d/scripts/autocomplete.el")
(load-file "/home/sree/.emacs.d/scripts/marker.el")

(add-to-list 'load-path "/home/sree/.emacs.d/elpa/flycheck-master")

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; add color identifiers mode
;;(add-hook 'after-init-hook 'global-color-identifiers-mode)
(setq auto-indent-mode t)

;;delete files recursively without confirmation
(setq dired-recursive-deletes 'always)




;; add my custom styling once the theme is loaded
(load-file "/home/sree/.emacs.d/scripts/styling.el")


(global-set-key (kbd "C-g") 'fiplr-find-file)
(display-time-mode t)
(global-set-key (kbd "C-x f") 'project-explorer-open)


(display-battery-mode t)
(put 'scroll-left 'disabled nil)

;; i don't like that scrollbar taking lots
;; of width and the stupid toolbar with icons and the menu-bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(smooth-scrolling-mode t)

;; highlight the marked region
(set-face-attribute 'region nil :background "#666")
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))


;; Custom Keybindings
(load-file "/home/sree/.emacs.d/scripts/keybindings.el")


;;(load-theme 'monokai t)
(xclip-mode 1)
(global-eldoc-mode -1)

