(setq ensime_path "/home/sree/.emacs.d/ensime-server-master")
(setq scala_exec_path "/home/sree/NG/scala-2.10.3/bin/")
(setq sbt_exec_path "/home/sree/NG/sbt")

(add-to-list 'load-path ensime_path)
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(push scala_exec_path exec-path)
(push sbt_exec_path exec-path)
