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

