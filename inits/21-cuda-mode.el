;; cuda-mode
(require 'irony)

;; google-c-style
(setq auto-mode-alist
      (append
       '(
         ("\\.cu$" . cuda-mode)
         ("\\.cuda$" . cuda-mode)
         )
       auto-mode-alist))

(add-hook 'cuda-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-to-list 'irony-lang-compile-option-alist
             (cons 'cuda-mode (format "c++ -std=c++11 -march=native -I%s" (expand-file-name "~/include"))))
(add-to-list 'irony-supported-major-modes 'cuda-mode)

(add-hook 'cuda-mode-common-hook
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
