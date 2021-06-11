;; (global-set-key "\C-c\ a" 'org-agenda-list)
;; (global-set-key "\C-c\ y" 'org-agenda-year-view)


(setq org-capture-templates
      '(("t" "todo" entry (file org-default-notes-file)
         "* TODO %?\n%u\n%a\n" :clock-in t :clock-resume t)
        ("m" "Meeting" entry (file org-default-notes-file)
         "* MEETING with %? :MEETING:\n%t" :clock-in t :clock-resume t)
        ("d" "Diary" entry (file+datetree "~/org/diary.org")
         "* %?\n%U\n" :clock-in t :clock-resume t)
        ("i" "Idea" entry (file org-default-notes-file)
         "* %? :IDEA: \n%t" :clock-in t :clock-resume t)
        ("n" "Next Task" entry (file+headline org-default-notes-file "Tasks")
         "** NEXT %? \nDEADLINE: %t") ))

;; (setq org-startup-with-inline-images t)

;;; Code:
(setq org-agenda-files '("/Users/d107520/trello/103-gordon-st.org"
                         "/Users/d107520/trello/citizens.org"
                         "/Users/d107520/trello/learning.org"))



(setq org-reveal-note-key-char nil)


;; (setq org-structure-template-alist
;;       '(("py" "#+BEGIN_SRC python :results output\n?\n#+END_SRC" "")
;;         ("ipy" "#+BEGIN_SRC ipython :results output\n?\n#+END_SRC" "")
;;         ("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC" "")
;;         ("hs" "#+BEGIN_SRC haskell\n?\n#+END_SRC" "")
;;         ("laeq" "#+BEGIN_LaTeX\n\\begin{equation} \\label{eq-sinh}\ny=\\sinh x\n\\end{equation}\n#+END_LaTeX" "")
;;         ("sh" "#+BEGIN_SRC sh\n?\n#+END_SRC" "")
;;         ("r" "#+BEGIN_SRC R\n?\n#+END_SRC" "")
;;         ("js" "#+BEGIN_SRC js\n?\n#+END_SRC" "")
;;         ("http" "#+BEGIN_SRC http\n?\n#+END_SRC" "")
;;         ("ditaa" "#+BEGIN_SRC ditaa :file\n?\n#+END_SRC" "")
;;         ("dot" "#+BEGIN_SRC dot :file\n?\n#+END_SRC" "")
;;         ("rp" "#+BEGIN_SRC R :results output graphics :file \n?\n#+END_SRC" "")
;;         ("plantuml" "#+BEGIN_SRC plantuml :file\n?\n#+END_SRC" "")
;;         ("n" "#+NAME: ?")
;;         ("cap" "#+CAPTION: ?")))
;; (when (version< (org-version) "9.2")
;;   (add-to-list 'org-modules 'org-tempo))

;; (require 'org-tempo)
;; (add-to-list 'org-tempo-keywords-alist
;;              '("ipy" . "src jupyter-python :session py"))

;; (add-hook 'org-mode-hook #'org-trello-mode)


(setq org-todo-keywords
      '((sequence "TODO" "DOING" "DONE" "SCRAPPED")))



(defun krofna-hack ()
  (when (looking-back (rx "$ "))
    (save-excursion
      (backward-char 1)
      (org-toggle-latex-fragment))))

(add-hook 'org-mode-hook
          (lambda ()
            (org-cdlatex-mode)
            (add-hook 'post-self-insert-hook #'krofna-hack 'append 'local)))


(provide 'orgmode)
;;; orgmode.el ends here
