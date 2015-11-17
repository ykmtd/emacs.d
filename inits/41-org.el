(require 'org-install)
(setq org-directory
      (if (file-directory-p "~/Dropbox/memo")
        "~/Dropbox/memo/"
        "~/memo/"))
(setq org-default-notes-file (concat org-directory "memo.org"))
(require 'org-capture)
(setq org-capture-templates
      '(("t" "Task" entry (file+headline nil "Inbox")
         "** TODO %?\n %T\n %a\n %i\n")
        ("b" "Bug" entry (file+headline nil "Inbox")
         "** TODO %?   :bug:\n  %T\n %a\n %i\n")
        ("i" "Idea" entry (file+headline nil "Idea")
         "** %?\n %U\n %i\n %a\n %i\n")
        )
      )
(global-set-key (kbd "C-c c") 'org-capture)
