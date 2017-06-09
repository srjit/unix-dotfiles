
(require 'simplenote)
(setq simplenote-email "sreejith2904@gmail.com")
(setq simplenote-password "helloworld")
;;(simplenote-setup)

(require 'simplenote2)
(setq simplenote2-email "sreejith2904@gmail.com")
(setq simplenote2-password "helloworld")
;;(simplenote2-setup)



(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome-stable")


(require 'tex-mik)
(load-file "/home/sree/.emacs.d/custom/auto-complete-auctex.el")
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)


;; ;; Settings
;; (add-to-list 'load-path "/home/sree/.emacs.d/elpa/spotify.el-master")
;; (require 'spotify)

;; (setq spotify-oauth2-client-secret "b8e4279cd07d4481b8ad10318c6ce73c")
;; (setq spotify-oauth2-client-id "be38c93af096484eaf9c19a883a907ff")


;; create a todo buffer
(pop-to-buffer "*TODO*")
(find-file "~/todo.org")
