(setq org-agenda-files (list "~/Dropbox/tracker/todo.org"
                             "/home/sree/Dropbox/tracker/computer-vision.org"
                             "/home/sree/Dropbox/tracker/fundies.org"
                             "/home/sree/Dropbox/tracker/reminders.org"
                             "/home/sree/Dropbox/tracker/anniversary.org"
                             "/home/sree/Dropbox/tracker/projects.org"
                             "/home/sree/Dropbox/tracker/academia.org"))



(global-set-key "\C-c\ a" 'org-agenda-list)
(global-set-key "\C-c\ y" 'org-agenda-year-view)


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
(setq org-startup-with-inline-images t)
