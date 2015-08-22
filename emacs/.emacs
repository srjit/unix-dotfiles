
;; Kill unwanted buffers
(load-file "/home/sree/.emacs.d/scripts/killbuff.el")

;; Emacs repositories
(load-file "/home/sree/.emacs.d/scripts/repositories.el")

;; Language Configuratons
(load-file "/home/sree/.emacs.d/scripts/pythonconf.el")
(load-file "/home/sree/.emacs.d/scripts/rconf.el")
(load-file "/home/sree/.emacs.d/scripts/git.el")
(load-file "/home/sree/.emacs.d/scripts/xmlconf.el")

;; Custom Keybindings
(load-file "/home/sree/.emacs.d/scripts/keybindings.el")
(load-file "/home/sree/.emacs.d/scripts/styling.el")
(load-file "/home/sree/.emacs.d/scripts/autocomplete.el")


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


;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; add color identifiers mode
;;(add-hook 'after-init-hook 'global-color-identifiers-mode)
;; copy paste between applications and emacs
(setq x-select-enable-clipboard t)

;;delete files recursively without confirmation
(setq dired-recursive-deletes 'always)

;;(require 'highlight-indentation)
;; Load python helpers/formatters and all
;;(pymacs-load "ropemacs" "rope-")









