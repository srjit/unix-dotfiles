;; auto-complete
(require 'yasnippet)
(require 'popup)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20150618.1949/")
(load-file "/home/cloudera/.emacs.d/elpa/auto-complete-20150618.1949/auto-complete-acr.el")


(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

(set-default 'ac-sources
	     '(ac-source-abbrev
	       ac-source-dictionary
	       ac-source-yasnippet
	       ac-source-words-in-buffer
	       ac-source-words-in-same-mode-buffers
	                      ac-source-semantic))

(load-file "/home/cloudera/.emacs.d/custom/auto-complete-acr.el")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/cloudera/.emacs.d/elpa/auto-complete-20150618.1949/dict")

;;(load "auto-complete")
(global-auto-complete-mode)


(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

(ac-set-trigger-key "TAB")

(add-to-list 'load-path "/home/cloudera/.emacs.d/elpa/r-autoyas-20140101.710")
(require 'r-autoyas)

(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
(add-hook 'ess-mode 'yas/minor-mode-on)
