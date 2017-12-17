(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; smooth scrolling
(smooth-scrolling-mode t)

;; copy paste anywhere
(xclip-mode 1)


;; org to beamer export
(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}"
               ("\\section\{%s\}" . "\\section*\{%s\}")
               ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))





(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

(set-default 'ac-sources
	     '(ac-source-abbrev
	       ac-source-dictionary
	       ac-source-yasnippet
	       ac-source-words-in-buffer
	       ac-source-words-in-same-mode-buffers
	                      ac-source-semantic))

(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
