;; migemo
(when (and (executable-find "cmigemo")
           (require 'migemo nil t))

  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))
  (setq migemo-dictionary "/usr/share/migemo/utf-8/migemo-dict")

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (load-library "migemo")
  (migemo-init)

  ;; helm-migemo
  (require 'helm-migemo)

  (eval-after-load "helm-migemo"
    '(defun helm-compile-source--candidates-in-buffer (source)
       (helm-aif (assoc 'candidates-in-buffer source)
           (append source
                   `((candidates
                      .,(or (cdr it)
                            (lambda ()
                              (helm-candidates-in-buffer (helm-get-current-source)))))
                     (volatile) (match identity)))
         source)))
  )
