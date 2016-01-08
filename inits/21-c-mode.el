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

(add-hook 'c-mode-common-hook
          '(lambda ()
             (google-set-c-style)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)
             (hs-minor-mode 1)
             (define-key hs-minor-mode-map (kbd "C-i C-i") 'hs-toggle-hiding)
             (add-to-list 'electric-layout-rules '(?{ . after)))
             )
