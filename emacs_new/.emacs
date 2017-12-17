(package-initialize)

(setq username (getenv "USER"))

;; Mandatory Scripts

;; set keybindings
(load-file "/home/sree/.emacs.d/scripts/keybindings.el")
;; Emacs repositories
(load-file "/home/sree/.emacs.d/scripts/repositories.el")
;; add my custom styling once the theme is loaded
(load-file "/home/sree/.emacs.d/scripts/styling.el")
;; load my python mode
(load-file "/home/sree/.emacs.d/scripts/pythonmode.el")











(custom-set-variables                                                                                  
 ;; custom-set-variables was added by Custom.                                                          
 ;; If you edit it by hand, you could mess it up, so be careful.                                       
 ;; Your init file should contain only one such instance.                                              
 ;; If there is more than one, they won't work right.                                                  
 '(custom-enabled-themes (quote (monokai)))                                                            
 '(custom-safe-themes                                                                                  
   (quote                                                                                              
    ("d409bcd828a041ca8c28433e26d1f8a8e2f0c29c12c861db239845f715a9ea97" default)))                     
 '(inhibit-startup-screen t)                                                                           
 '(package-selected-packages                                                                           
   (quote                                                                                              
    (fiplr project-explorer jedi helm-projectile magit projectile elpy powerline))))                   
(custom-set-faces                                                                                      
 ;; custom-set-faces was added by Custom.                                                              
 ;; If you edit it by hand, you could mess it up, so be careful.                                       
 ;; Your init file should contain only one such instance.                                              
 ;; If there is more than one, they won't work right.                                                  
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil))))) 
