;; font options
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Consolas-11"))
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; set initial scratch message to null
(setq initial-scratch-message "")

;; Highlight the current line and keep an underline on the current line where i am in
(global-hl-line-mode 1)
(set-face-background 'highlight "#666")
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)
(electric-pair-mode t)



(global-linum-mode t)
(put 'set-goal-column 'disabled nil)

(add-hook 'shell-mode-hook 'remap-up-key-in-shell)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)

;;(setq display-time-mode 1)


(add-to-list 'load-path "/home/sree/.emacs.d/themes/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
          (color-theme-ld-dark)))


(setq sml/no-confirm-load-theme t)
(load-file "~/.emacs.d/elpa/emacs-powerline/powerline.el")
(setq powerline-arrow-shape 'curve)

(setq powerline-default-separator-dir '(right . left))
(custom-set-faces '(mode-line ((t (:foreground "#964514" :background "#bdbdbd" :box nil))))
		  '(mode-line-inactive ((t (:foreground "#8E2323" :background "#7F8778" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

(setq sml/theme 'powerline)

