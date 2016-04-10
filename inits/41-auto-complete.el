;; auto-complete-mode

(require 'ac-irony)

(auto-complete-mode 1)
(ac-config-default)

(add-to-list 'ac-sources 'ac-source-irony)
(define-key irony-mode-map (kbd "M-RET") 'ac-complete-irony-async)
