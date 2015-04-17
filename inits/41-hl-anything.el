;; hl-anything
(require 'hl-anything)

(add-hook 'hl-highlight-mode-hook
          '(lambda ()
             (define-key region-bindings-mode-map "h" 'hl-highlight-thingatpt-local)
             (define-key region-bindings-mode-map "H" 'hl-unhighlight-all-local)))
