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
             ))
