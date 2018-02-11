;; font options
(defun fontify-frame (frame)
;;  (set-frame-parameter frame 'font "Operator Mono-12"))
;;  (set-frame-parameter frame 'font "Monaco-12"))
  (set-frame-parameter frame 'font "Consolas-13"))
;;  (set-frame-parameter frame 'font "Monaco-11"))
;;  (set-frame-parameter frame 'font "Fantasque Sans Mono-13"))
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; set initial scratch message to null
(setq initial-scratch-message "")

;; Highlight the current line and keep an underline on the current line where i am in
;; (require 'highlight-current-line)
;; (highlight-current-line-on t)
(global-hl-line-mode 1)


;;(set-face-attribute hl-line-face nil :underline t)
(set-face-background 'hl-line "#3e4446")


;;(set-face-background 'highlight "#222")
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)
(electric-pair-mode t)




(global-linum-mode t)

(put 'set-goal-column 'disabled nil)

(add-hook 'shell-mode-hook 'remap-up-key-in-shell)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)




;; smart mode line powerline emacs
;; (require 'powerline)
;; (setq sml/theme 'powerline)
;; (sml/setup)



;; pure powerline

(load-file "~/.emacs.d/custom/powerline.el")
(setq display-time-mode 1)

(setq powerline-arrow-shape 'arrow)
(setq powerline-default-separator-dir '(right . left)) 
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))



;; Doom Theme
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-common.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-neotree.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-nlinum.el")

;;(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-molokai-theme.el")
;;(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-vibrant-theme.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-one-theme.el")
;;(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-nova-theme.el")
;;(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-tomorrow-night-theme.el")


