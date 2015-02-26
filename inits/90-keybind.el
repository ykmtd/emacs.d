;; anzu
(global-set-key (kbd "C-c r") 'anzu-query-replace)
(global-set-key (kbd "C-c R") 'anzu-query-replace-regexp)

;; undo-tree
(global-set-key "\M-/" 'undo-tree-redo)

;; helm
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "C-c i")   'helm-imenu)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)

;; region-bindings-mode + expand-region/multiple-cursors
(define-key region-bindings-mode-map "e" 'er/expand-region)
(define-key region-bindings-mode-map "r" 'er/contract-region)
(define-key region-bindings-mode-map "n" 'mc/mark-next-like-this)
(define-key region-bindings-mode-map "p" 'mc/mark-previous-like-this)
(define-key region-bindings-mode-map "m" 'mc/mark-more-like-this-extended)
(define-key region-bindings-mode-map "u" 'mc/unmark-next-like-this)
(define-key region-bindings-mode-map "U" 'mc/unmark-previous-like-this)
(define-key region-bindings-mode-map "s" 'mc/skip-to-next-like-this)
(define-key region-bindings-mode-map "S" 'mc/skip-to-previous-like-this)
(define-key region-bindings-mode-map "*" 'mc/mark-all-like-this)
(define-key region-bindings-mode-map "d" 'mc/mark-all-like-this-dwim)
(define-key region-bindings-mode-map "i" 'mc/insert-numbers)
(define-key region-bindings-mode-map "o" 'mc/sort-regions)
(define-key region-bindings-mode-map "O" 'mc/reverse-regions)

;; shell-pop
(eval-after-load "yatex-mode"
  '(progn
     (define-key org-mode-map (kbd "C-t") nil)
     )
  )
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'shell-pop)

;; sequential-command
(global-set-key "\C-a" 'seq-home)
(global-set-key "\C-e" 'seq-end)
(when (require 'org nil t)
  (define-key org-mode-map "\C-a" 'org-seq-home)
  (define-key org-mode-map "\C-e" 'org-seq-end))

;; magit
(define-key global-map (kbd "C-x C-g")     'magit-status)
