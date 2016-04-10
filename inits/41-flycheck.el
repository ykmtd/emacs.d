;; flycheck
(require 'flycheck)
(setq-default flycheck-gcc-openmp t)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'latex-mode-hook 'flycheck-mode)

(eval-after-load "flycheck"
  '(progn
     (when (locate-library "flycheck-irony")
       (flycheck-irony-setup))))
