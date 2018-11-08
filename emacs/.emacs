;;(package-initialize)

(setq username (getenv "USER"))

;; Mandatory Scripts

;; Emacs repositories
(load-file "/home/sree/.emacs.d/scripts/repositories.el")
;; add my custom styling once the theme is loaded
(load-file "/home/sree/.emacs.d/scripts/styling.el")


;; set keybindings
(load-file "/home/sree/.emacs.d/scripts/keybindings.el")

;; load my python mode
(load-file "/home/sree/.emacs.d/scripts/pythonmode.el")
(load-file "/home/sree/.emacs.d/scripts/cpp.el")

(load-file "/home/sree/.emacs.d/scripts/orgmode.el")


(xclip-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list
   '(("xelatex" "xelatex" TeX-run-command nil
      (plain-tex-mode latex-mode))
     ("TeX" "%(PDF)%(tex) %(file-line-error) %(extraopts) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil
      (plain-tex-mode texinfo-mode ams-tex-mode)
      :help "Run plain TeX")
     ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("Makeinfo HTML" "makeinfo %(extraopts) --html %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with HTML output")
     ("AmSTeX" "amstex %(PDFout) %(extraopts) %`%S%(mode)%' %t" TeX-run-TeX nil
      (ams-tex-mode)
      :help "Run AMSTeX")
     ("ConTeXt" "%(cntxcom) --once --texutil %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt once")
     ("ConTeXt Full" "%(cntxcom) %(extraopts) %(execopts)%t" TeX-run-TeX nil
      (context-mode)
      :help "Run ConTeXt until completion")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Print" "%p" TeX-run-command t t :help "Print the file")
     ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command)
     ("File" "%(o?)dvips %d -o %f " TeX-run-dvips t t :help "Generate PostScript file")
     ("Dvips" "%(o?)dvips %d -o %f " TeX-run-dvips nil t :help "Convert DVI file to PostScript")
     ("Dvipdfmx" "dvipdfmx %d" TeX-run-dvipdfmx nil t :help "Convert DVI file to PDF with dvipdfmx")
     ("Ps2pdf" "ps2pdf %f" TeX-run-ps2pdf nil t :help "Convert PostScript file to PDF")
     ("Glossaries" "makeglossaries %s" TeX-run-command nil t :help "Run makeglossaries to create glossary file")
     ("Index" "makeindex %s" TeX-run-index nil t :help "Run makeindex to create index file")
     ("upMendex" "upmendex %s" TeX-run-index t t :help "Run upmendex to create index file")
     ("Xindy" "texindy %s" TeX-run-command nil t :help "Run xindy to create index file")
     ("Check" "lacheck %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for correctness")
     ("ChkTeX" "chktex -v6 %s" TeX-run-compile nil
      (latex-mode)
      :help "Check LaTeX file for common mistakes")
     ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")))
 '(ansi-color-names-vector
   ["#454545" "#cd5542" "#6aaf50" "#baba36" "#5180b3" "#ab75c3" "#68a5e9" "#bdbdb3"])
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(jazz))
 '(custom-safe-themes
   '("d3a7eea7ebc9a82b42c47e49517f7a1454116487f6907cf2f5c2df4b09b50fc1" "5adc266aa04b9419a6ce88b3ec9993d03e1f96d8365b2864158204fdffb36474" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "42b9d85321f5a152a6aef0cc8173e701f572175d6711361955ecfb4943fe93af" "021720af46e6e78e2be7875b2b5b05344f4e21fad70d17af7acfd6922386b61e" "6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "a4d03266add9a1c8f12b5309612cbbf96e1291773c7bc4fb685bfdaf83b721c6" "d409bcd828a041ca8c28433e26d1f8a8e2f0c29c12c861db239845f715a9ea97" default))
 '(fci-rule-color "#1B1D1E")
 '(highlight-changes-colors '("#FD5FF0" "#C678DD"))
 '(highlight-tail-colors
   '(("#1B1D1E" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#1B1D1E" . 100)))
 '(inhibit-startup-screen t)
 '(linum-format " %7i ")
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   '(iedit swiper matlab-mode company-ycmd company-ycm ycmd flycheck-irony lsp-clangd company-rtags company-c-headers company-irony sr-speedbar fzf ggtags irony pdf-tools pipenv latex-preview-pane latex-extra go-mode mu4e-conversation mu4e-alert mu4e-maildirs-extension jazz-theme jbeans-theme sublime-themes gruvbox-theme ample-theme dracula-theme darktooth-theme lsp-python lsp-ui smooth-scrolling expand-region csv-mode web-mode fiplr project-explorer jedi helm-projectile magit projectile elpy powerline))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#E06C75")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E5C07B")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#98C379")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#56B6C2")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#61AFEF")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#282C34" "#1B1D1E" "#F70057" "#E06C75" "#86C30D" "#98C379" "#BEB244" "#E5C07B" "#40CAE4" "#61AFEF" "#FB35EA" "#FD5FF0" "#74DBCD" "#56B6C2" "#ABB2BF" "#282C34")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(set-face-background 'hl-line "black")
(put 'downcase-region 'disabled nil)

;; (set-frame-parameter (selected-frame) 'alpha '(85 80))
;; (add-to-list 'default-frame-alist '(alpha 85 90))
(put 'upcase-region 'disabled nil)

(add-hook 'after-init-hook 'org-agenda-list)
