
(setq username (getenv "USER"))

;; Kill unwanted buffers
(load-file (concat "/home/" username "/.emacs.d/scripts/killbuff.el")

;; Emacs repositories
(load-file (concat "/home/" username "/.emacs.d/scripts/repositories.el"))

;; Language Configuratons
(load-file (concat "/home/" username "/.emacs.d/scripts/pythonconf.el"))
(load-file (concat "/home/" username "/.emacs.d/scripts/rconf.el"))
(load-file (concat "/home/" username "/.emacs.d/scripts/git.el"))
(load-file (concat "/home/" username "/.emacs.d/scripts/xmlconf.el"))

;; Custom Keybindings
(load-file (concat "/home/" username "/.emacs.d/scripts/keybindings.el"))
(load-file (concat "/home/" username "/.emacs.d/scripts/styling.el"))
(load-file (concat "/home/" username "/.emacs.d/scripts/autocomplete.el"))


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; add color identifiers mode
;;(add-hook 'after-init-hook 'global-color-identifiers-mode)
;; copy paste between applications and emacs
(setq x-select-enable-clipboard t)

;;delete files recursively without confirmation
(setq dired-recursive-deletes 'always)

(add-to-list 'load-path "/home/cloudera/.emacs.d/themes/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-ld-dark)))



;; use projectile mode for projects
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

;; fiplr for searching on files in a project
(global-set-key (kbd "C-f") 'fiplr-find-file)
(display-time-mode t)    


(setq twittering-use-master-password t)
(setq twittering-icon-mode t)

(global-set-key (kbd "C-x f") 'project-explorer-open)


(global-set-key (kbd "C-x .") 'next-buffer)
(global-set-key (kbd "C-x ,") 'previous-buffer)


(display-battery-mode t)
(put 'scroll-left 'disabled nil)
;;(require 'ess-site)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(let ((my-cabal-path (expand-file-name "~/.cabal/bin")))
  (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-cabal-path))


(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-o") 'haskell-compile))
(eval-after-load 'haskell-cabal
  '(define-key haskell-cabal-mode-map (kbd "C-c C-o") 'haskell-compile))


(setq sml/no-confirm-load-theme t)
(load-file "~/.emacs.d/elpa/emacs-powerline/powerline.el")
(setq powerline-arrow-shape 'curve)

(setq powerline-default-separator-dir '(right . left))
(custom-set-faces '(mode-line ((t (:foreground "#964514" :background "#bdbdbd" :box nil))))
		  '(mode-line-inactive ((t (:foreground "#8E2323" :background "#7F8778" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

(setq sml/theme 'powerline)
(sml/setup)









