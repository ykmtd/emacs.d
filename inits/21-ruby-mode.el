;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; ruby-end
(require 'ruby-end)

(add-hook 'ruby-mode-hook
          '(lambda ()
             (electric-pair-mode t)
             (add-to-list 'electric-pair-pairs '(?| . ?|))
             (electric-indent-mode t)
             (hs-minor-mode 1)
             (define-key hs-minor-mode-map (kbd "C-l C-l") 'hs-toggle-hiding)
             ))

(let ((ruby-mode-hs-info
       '(ruby-mode
         "class\\|module\\|def\\|if\\|unless\\|case\\|while\\|until\\|for\\|begin\\|do"
         "end"
         "#"
         ruby-move-to-block
         nil)))
  (if (not (member ruby-mode-hs-info hs-special-modes-alist))
      (setq hs-special-modes-alist
                        (cons ruby-mode-hs-info hs-special-modes-alist))))
