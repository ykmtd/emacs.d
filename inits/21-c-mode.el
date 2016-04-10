;; google-c-style
(require 'google-c-style)

(add-hook 'c-mode-common-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq irony-lang-compile-option-alist
      '((c++-mode . ("c++" "-std=c++11" "-lstdc++" "-lm"))
        (c-mode . ("c"))))

(defun irony--lang-compile-option ()
  (irony--awhen (cdr-safe (assq major-mode irony-lang-compile-option-alist))
                (append '("-x") it)))

(add-hook 'c-mode-common-hook
          '(lambda ()
             (google-set-c-style)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)
             (irony-mode 1)
             (hs-minor-mode 1)
             (define-key hs-minor-mode-map (kbd "C-l C-l") 'hs-toggle-hiding)
             (add-to-list 'electric-layout-rules '(?{ . after)))
             )
