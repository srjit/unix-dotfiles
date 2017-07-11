;; font options
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Consolas-10"))
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


;; (setq sml/no-confirm-load-theme t)
;; (load-file "~/.emacs.d/elpa/emacs-powerline/powerline.el")
;; (setq powerline-arrow-shape 'curve)

;; (setq powerline-default-separator-dir '(right . left))
;; (custom-set-faces '(mode-line ((t (:foreground "#964514" :background "#bdbdbd" :box nil))))
;; 		  '(mode-line-inactive ((t (:foreground "#8E2323" :background "#7F8778" :box nil)))))
;; (setq powerline-color1 "grey22")
;; (setq powerline-color2 "grey40")

;; (setq sml/theme 'powerline)


;; add vim inspired powerline from
;; https://github.com/jonathanchu/emacs-powerline
(load-file "~/.emacs.d/custom/emacs-powerline/powerline.el")
(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")
(setq display-time-mode 1)







(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))


;; Doom Theme
(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes.el")
(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-common.el")
(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-neotree.el")
(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/doom-themes-nlinum.el")

;;(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-molokai-theme.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-vibrant-theme.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-one-theme.el")
;; (load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-nova-theme.el")
(load-file "/home/sree/.emacs.d/themes/emacs-doom-themes/themes/doom-tomorrow-night-theme.el")


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:inherit highlight :background "color-188" :underline t))))
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(put 'dired-find-alternate-file 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(comint-prompt-read-only t)
 '(compilation-error-regexp-alist
   (quote
    (("^\\[error\\] \\([.a-zA-Z0-9/-]+[.]scala\\):\\([0-9]+\\):" 1 2 nil 2 nil))))
 '(compilation-message-face (quote default))
 '(compilation-mode-font-lock-keywords
   (quote
    (("^\\[error\\] Error running compile:"
      (0 compilation-error-face))
     ("^\\[warn\\][^
]*"
      (0 compilation-warning-face))
     ("^\\(\\[info\\]\\)\\([^
]*\\)"
      (0 compilation-info-face)
      (1 compilation-line-face))
     ("^\\[success\\][^
]*"
      (0 compilation-info-face)))) t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (smart-mode-line-powerline)))
 '(custom-safe-themes
   (quote
    ("2536199bc7853d560860237a0a62de507a1b0da56e3897facba12e065e6d5ef7" "5177f938126c1937624b990fbbdddc5d34deb40a0037b6b3bc27d31a00445c39" "0af321118b3c9c678e36d87085464c10ead1e81ef8060a4e37161dbbdc244339" "44afd551aa6cf12c795a77e94fbca234be6bc0dfadfbd970bd42bbf18e7ff591" "70e3b41b667b2aba86b974dcfef2d2a92dc01f02dbfc7e4533fcda4b05eb0b44" "5690951d9faa8ac960d841a4db7f01a295ececb93fa8ceee1c07698d338b0dcc" "3c805cc1102bfa5dc2f86df79f4343f052ffd699f623bdd59935bb6d88172d98" "7ccad359636d316587335987c8210647b2cf07f5f2a8d42d668d2ad373a8c6a7" "85709e9403085719e0370d2d313bf922ed517b4aa2550b79c15faddbe19272ce" "1eefdebc4c8b4ff298eb5864d216f14cdd6f06db79c6b57437182ee27491d8be" "ef331301ed327d1caa9dcc3286272fcbae0e5692e27705cd463f1b5dad52c410" "a66d0ef48faee521c6124dd921db2972f53287bade3ea42e98c2c3cecc57fede" "8b4bd0e1507cef4d7bc76ec0e1865a00a7a3472cc482dc90441e46fa77f836d7" "0b062561443544679874345631285b9744608e3cbb91167799f564c59f5a7e92" "4f986a00f63a6f3bf310ff75e7a3626e9d7390c2fd54f76e1cf38cb0fcd64daa" "afed67ab26a940e4a2156ccb255f086faa20b5651483ba3ed83b322665a3325d" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "9a6554b34e2eb2b170e1d03bae14d12ae234507a9216a15bcdc92fbc274a9689" "dc594e589d7927c234c35de25a355203ab702008494cbd5213a9f17458411d85" "63b7b8a45190b2e7362a975067bd76b55ae548c00e9088d12b4133eb0525a604" "1a2a0286b90917fb70e4b578dc2a4fee3e768123e2ea6e0890f7a3e30505e119" "eed99756e9759d72368fc066c123fb467eeaca3b3975412d64f79c13466d07c7" "0aaf0c241641fb69645ee41f43b819b436dff570fd3a20c23be256b3ebe8e13d" "94fddd71579db7c8c74e1b2ae06b6fab791f4623798d13f9d1ba7e2842adad5e" "5c0e769024ee7f144c288e8397f1f0325e3aa78c0f60268675165a10d4dad8f8" "1bb01d3cf0f0fe3885f75d9e29c22cdc34d93d683cc1d1a37b77a81b49d02a65" "a08ae73597546545b8bba2b10fd3150421e2520497e7cf4939ff323adad7624c" "8f309ad6174008d18352652f9e2a7c4b2a8befd86fc6662333bcfb80dc740ce1" "517fc449c4b2ea04da84c5a5e7a8c341b17afd5fad6221587e3af671083ab5dc" "2d0571410ab907d8626f165a6c9345a1df476861c9449b735de836aa4cfd5485" "01595d2ae74b67ef7c93173a9ff8eed1c7ac0a167d35fd095e06a04d4f577be1" "bb2a4a7cf765a9a6c476b71c5338af5a95ee7dd56821d7f0b5e8897e9ccdb804" "de8a225704353d2e065333bee0e7014ffdd900e7c55ac89bce1f22bf2b390a3f" "1160d55427adef6aa9c9dd270a4793f3fbcd76b58534499ada8a202ad71927f2" "a4762a9113159719bee44d9ec0999cd5ef9a9cd3fc27b73c263aa2bdf6434767" "f186850a36bc674692d2d4fa9fcc30753d94970d336af6fed72e3743bfb80d12" "6fe5ec9b287dcb1d51ebf20b264dd352b2292beaa7bef6ed23bd7798808e2cf7" "52a23f25e8adcf533f75f54bba978f0d10d48512da65e945ac87f79bf4f962a0" "ecfb7c8e00b8cd2453a17ed84d32d0513a87a3bc99580cfd1ec700d5f2213e90" "2553da265bcd5621cd6d50c63218a9ec4567a75c16b3230b3259f4245686eb37" "8308d81175acac9cbb36b498f5c7ae3560d5503c6783c22849342643d88b1d6d" "26ab83615edda557437889a6d13db32791bca8843bc37f4362ee9529c1a54092" "f804de4d3924e30f8cab8d8dd74acff8f9fb96d6d7bc962fa12266654655928c" "c6368ac71ef4bab087f7f116ae68735b4207dcd6b7d444c42a0d6f70cb285c5f" "05d043816e555a2b780348327013b7aa1bfd106151e7d0d1bc7f24d161747812" "59f42f7028e0cf1d8d6a7bc172dc37da64e4cd11fd29cf03c6ca950451cc2a00" "f0b685882320d31a165c71527c4f579bd659fdc75c0fde72c8a6cbccb1b77391" "1425c67498b6d82ecdf31735f97778cc71299c46d0f17459fef2b3329496aa37" "7e26239fae2bbf322a03b170bdda7956e9300f18458b228892e3e1b9cdf84b99" "8234f19eca7eca68c38bfbbdf4986cdc0eecad441a9d7bd5f947d2d5f63669f4" "9074625daa8316d02a1736b700d13e2bf9586d0b6c2864e7c04f8f205f4dd817" "86c1163877cca93c3ed072ad20d97424f1442f21db63d90a021c4b4717a4915d" "1dddd484655a2c29ef532820f4d9c5cb6841216bc489077f31508cde435c1e81" "cefdb1422251955ed10af3553a1ea5d9d6c47530d889169b34e61abe432d53c5" "9d9e164c0e3ec546bf1eb9d1dbd06f4ecf66a4373b50f2a511274111693b19b6" "b649a99bd9e0a2d51c3625b0aed6b6916202a3c333072227e1b64ad3b62b1c29" "7334f761edfccfa87893211f651220a0899bb206f042b856393b7af22b0413e2" "60e5aa55acd01a916de3e98270ea796760f819d94a9182df811981b34dec1d01" "c9c06f3396389442bbf2e8c7220334676f47685b38789e17e3500abc632ca9bf" "ce885f88a62f8b82d41052f5d9b2ff5362e766cb9b69db92a2ae58a9b206cfaa" "d1be594f76d9fdc2f2e01ac9a0336b3b2233a9dbf1870257c07615dc37bc1aae" "4662e961b6ec733b1a919bc5d84281cf5d8f8fb181a02f00e4d418a5961956dc" "1679b2162067fb21491cb7d54b1a0ef6e84be169fc0fc353b6c8b9962b015165" "7e7379f5ea321bf1002c24b1f24092f33b57ce0db65961d310747c370915958b" "b5c5f60f7ebc84b01adcd42e1b0ea9c213fa681ac9b5e525c5cbe53bdd1f5801" "a616a89fb2bd874d51a8afb0c6df10f483d2feb43faf7ba2c5adb1ce6648fdad" "1584bf8da806b4e50f7525d9947ba39415926d8bf7dd40dacf3aecbeb55ef1ec" "5cb27f1d2101391b64ea8981aa2d3bd11e0e64a4e2b30f87717130253a5387b1" "fdfcff510dfc017e5199317760917dd2f9c9a4c690b1e9ccc08047dfcb9cdfab" "c0eaa0fdf55b9d1f5382b996f55a4976464f603dc80700d88bb196576e53016b" "4e6ff6d243e3a9e451706b34fc9a088cc0c6c5390e3a3121e80ddc8e05c160da" "6b0c4063c9aa61c2e0a7feda5f70b164b0efdeb9bf3cecb2d62fd7d1e54c02af" "08ad6e95f734ea178a283e868de12439fd6b7d449463c277cf6148bd6a3f8f09" "96f2d3d8e793f4395aff7d26b901c20eb5a88a82574c8b203af2c87b4d7a620a" "759ffbd76554a4cd694b5736ea7c138ce187cbc5854ed91fb75f24ec8b5cdbb6" "8148420dfc7500b024735da3399f6d0b21f92bebeb1ff630f59422de719937c6" "6bc2bb2b8de7f68df77642b0615d40dc7850c2906b272d3f83a511f7195b07da" "05383ca6b9eee7a65f0e7d1361ce6f43f949a752125e65a557cb538000793f0f" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "cc5af45ea370950dfc8a205a4ab8c78964e2bcfc04ab093b6a1adda37cef3f35" "2daf79d4048f0f7280f6e6b763c8c81f8cef96ef8444b42ea0eb3023fe387eac" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "06b2849748590f7f991bf0aaaea96611bb3a6982cad8b1e3fc707055b96d64ca" "76d063df44a77c91695f134bf418454456e2cd14f94c6f0fb1d0c34efa9e5d37" "08aa6e0373f89e8aaca6965fa595edec6130dd5fe3268ed8c585448d83d56882" "6074303ccc81443e413db63303bc03b3997d2dae50a86f21b47f5db6b5b8a651" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "83e584d74b0faea99a414a06dae12f11cd3176fdd4eba6674422539951bcfaa8" "1a85b8ade3d7cf76897b338ff3b20409cb5a5fbed4e45c6f38c98eee7b025ad4" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "a233249cc6f90098e13e555f5f5bf6f8461563a8043c7502fb0474be02affeea" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b7d8113de2f7d9a3cf42335d8eed8415b5a417e7f6382e59076f9f4ae4fa4cee" "367063ee6147a21d972640cbf7051a74d931b666b7792cfb1536146191103cf4" default)))
 '(custom-theme-directory "/home/sree/.emacs.d/elpa")
 '(custom-theme-load-path
   (quote
    ("/home/sree/.emacs.d/elpa" "~/.emacs.d/themes" custom-theme-directory t)) t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/sree/repo/liblinear")))
 '(fci-rule-color "#49483E")
 '(flymake-allowed-file-name-masks
   (quote
    (("\\.py\\'" flymake-pyflakes-init nil nil)
     ("\\.c\\'" flymake-simple-make-init nil nil)
     ("\\.cpp\\'" flymake-simple-make-init nil nil)
     ("\\.xml\\'" flymake-xml-init nil nil)
     ("\\.p[ml]\\'" flymake-perl-init nil nil)
     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup nil)
     ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup nil))))
 '(font-use-system-font t)
 '(gnus-inhibit-user-auto-expire t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (pomodoro python-mode highlight-indent-guides list-packages-ext smart-mode-line-powerline-theme smart-mode-line airline-themes powerline yasnippet-bundle w3 twittering-mode top-mode theme-looper theme-changer synonyms ssh sr-speedbar solarized-theme smooth-scrolling simplenote2 simplenote r-autoyas pymacs pyflakes project-explorer popup-complete magit load-theme-buffer-local kite-mini kite json-reformat jedi ipython hledger-mode highline highlight-current-line highlight helm-projectile haskell-mode groovy-mode grails-projectile-mode grails-mode git-ps1-mode git-gutter git fzf flymake-shell flymake-scala flymake-python-pyflakes flymake flycheck-pyflakes fiplr etags-table etags-select ess-smart-equals ess-R-object-popup ess-R-data-view ensime emms emacs-xkcd emacs-eclim elpy ecb e2wm doom dirtree dictionary cyberpunk-theme csv-mode color-theme-zenburn color-identifiers-mode cask auto-indent-mode auto-complete-octave auctex afternoon-theme ac-python ac-anaconda ac-R abyss-theme)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(python-shell-interpreter "ipython3")
 '(scala-compile-error-regex
   (quote
    ("^\\[error\\] \\([.a-zA-Z0-9/-]+[.]scala\\):\\([0-9]+\\):" 1 2 nil 2 nil)) t)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/mode-width
   (if
       (eq
	(powerline-current-separator)
	(quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote sml/global)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil t)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F80")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

