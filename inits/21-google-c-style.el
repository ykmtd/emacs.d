;; google-c-style
(require 'google-c-style)
(setq auto-mode-alist
      (append
       '(
         ("\\.c$" . c++-mode)
         ("\\.h$" . c++-mode)
         ("\\.ino$" . c++-mode)
         )
       auto-mode-alist))
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
