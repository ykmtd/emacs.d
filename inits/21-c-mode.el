;; google-c-style
;; (require 'google-c-style)

(add-hook 'c-mode-common-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq irony-lang-compile-option-alist
      (quote ((c++-mode . "c++ -std=c++11 -lstdc++ -march=native -I/home/matsuda/include")
              (c-mode . "c")
              (objc-mode . "objective-c"))))

(defun ad-irony--lang-compile-option ()
  (defvar irony-lang-compile-option-alist)
  (let ((it (cdr-safe (assq major-mode irony-lang-compile-option-alist))))
    (when it (append '("-x") (split-string it "\s")))))
(advice-add 'irony--lang-compile-option :override #'ad-irony--lang-compile-option)
(defun irony--lang-compile-option ()
  (irony--awhen (cdr-safe (assq major-mode irony-lang-compile-option-alist))
    (append '("-x") it)))

(add-hook 'c-mode-common-hook
          '(lambda ()
             ;; (google-set-c-style)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (irony-mode 1)
             (hs-minor-mode 1)
             (define-key hs-minor-mode-map (kbd "C-l C-l") 'hs-toggle-hiding)
             (setq c++-basic-offset 4)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             ))
