(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")


;; font options
(defun fontify-frame (frame)
  ;;  (set-frame-parameter frame 'font "Consolas-13"))
  (set-frame-parameter frame 'font "Fira Code-13"))
;;  (set-frame-parameter frame 'font "Fira Code-12"))

;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; set initial scratch message to null
(setq initial-scratch-message "")

(electric-pair-mode t)


;; line number while loading and place a line with a small margin
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")
(put 'set-goal-column 'disabled nil)


;; load powerline
;; (load-file "~/.emacs.d/plugins/powerline/powerline.el")
;; (setq display-time-mode 1)

;; set colors
;; (custom-set-faces
;;  '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
;;  '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
;; (setq powerline-color1 "grey22")
;; (setq powerline-color2 "grey40")

;; fancy stuff - make it transparent
;; (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
;; (add-to-list 'default-frame-alist '(alpha . (85 . 50)))



;; theme addons
(setq ;; foreground and background
 monokai-foreground     "#ABB2BF"
 monokai-background     "#282C34"
 ;; highlights and comments
 monokai-comments       "#F8F8F0"
 monokai-emphasis       "#282C34"
 monokai-highlight      "#FFB269"
 monokai-highlight-alt  "#66D9EF"
 monokai-highlight-line "#1B1D1E"
 monokai-line-number    "#F8F8F0"
 ;; colours
 monokai-blue           "#61AFEF"
 monokai-cyan           "#56B6C2"
 monokai-green          "#98C379"
 monokai-gray           "#3E4451"
 monokai-violet         "#C678DD"
 monokai-red            "#E06C75"
 monokai-orange         "#D19A66"
 monokai-yellow         "#E5C07B")
(setq monokai-height-minus-1 0.8
      monokai-height-plus-1 1.1
      monokai-height-plus-2 1.15
      monokai-height-plus-3 1.2
      monokai-height-plus-4 1.3)

;; Highlight the current line and keep an underline on the current line where i am in
;; for underline
(global-hl-line-mode 1)
(set-face-attribute hl-line-face nil :underline t)

;; open the todo org file
;; (find-file "~/Dropbox/tracker/todo.org")


(require 'smooth-scrolling)
(smooth-scrolling-mode 1)



(setq-default
 whitespace-line-column 80
 whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook #'whitespace-mode)
