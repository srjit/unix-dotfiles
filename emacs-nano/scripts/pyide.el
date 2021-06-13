
(package-initialize)
(setq elpy-rpc-virtualenv-path "/Users/d107520/venvs/mllib")
(elpy-enable)

(load "elpy")
(load "elpy-rpc")
(load "elpy-shell")
(load "elpy-profile")
(load "elpy-refactor")

(setq projectile-globally-ignored-file-suffixes '(".png" ".gif" ".pdf"  "*.class"))

(use-package projectile
  :config
  (setq projectile-completion-system 'helm
        projectile-enable-caching    t
        projectile-globally-ignored-files
        (append '(".pyc"
                  ".class"
                  "~")
                projectile-globally-ignored-files))
  (projectile-mode)
  (helm-projectile-on)
  (defconst projectile-mode-line-lighter " P"))

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)

;; <M Tab> Autocomplete at point
;;
(provide 'pyide)
