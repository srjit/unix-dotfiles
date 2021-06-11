;;; contents for writing jupyter type org files
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (ipython . t)
   (jupyter . t)))

;; put <py and press tab in org mode
(setq org-structure-template-alist
      '(("py" "#+BEGIN_SRC jupyter-python :session py \n#+END_SRC" "")
        ("i" "#+BEGIN_SRC ipython :session\n#+END_SRC" "")
        ("r" "#+BEGIN_SRC R\n?\n#+END_SRC" "")
        ))
