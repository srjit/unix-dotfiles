

;; font options
(defun fontify-frame (frame)
  ;;  (set-frame-parameter frame 'font "Consolas-13"))
  (set-frame-parameter frame 'font "Fira Code-13"))

;; Fontify current frame
;;(fontify-frame nil)
;; Fontify any future frames
;;(push 'fontify-frame after-make-frame-functions)

;; set initial scratch message to null
(setq initial-scratch-message "")

(electric-pair-mode t)


;; line number while loading and place a line with a small margin
;;(global-linum-mode t)
;;(setq linum-format "%4d \u2502 ")
(put 'set-goal-column 'disabled nil)






;; Highlight the current line and keep an underline on the current line where i am in
;; for underline
;; (global-hl-line-mode 1)
;; (set-face-attribute hl-line-face nil :underline t)


(require 'smooth-scrolling)
(smooth-scrolling-mode 1)



(setq-default
 whitespace-line-column 80
 whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook #'whitespace-mode)
