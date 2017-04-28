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

;; helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

;; region-bindings-mode + expand-region/multiple-cursors
(define-key region-bindings-mode-map "e" 'er/expand-region)
(define-key region-bindings-mode-map "E" 'er/contract-region)
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
(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t") 'shell-pop)

;; sequential-command
(global-set-key "\C-a" 'seq-home)
(global-set-key "\C-e" 'seq-end)

;; window
(setq windmove-wrap-around t)
(smartrep-define-key global-map "C-c o"
  '(("k"   . windmove-up)
    ("j"   . windmove-down)
    ("h"   . windmove-left)
    ("l"   . windmove-right)
    ("C-k" . enlarge-window)
    ("C-j" . shrink-window)
    ("C-h" . shrink-window-horizontally)
    ("C-l" . enlarge-window-horizontally)
    ("o"   . other-window)
    ("3"   . split-window-right)
    ("2"   . split-window-below)
    ("0"   . delete-window)))

;; move + bm
(smartrep-define-key global-map "C-c"
  '(("f" . next-word)
    ("b" . backward-word)
    ("n" . next-sentence)
    ("p" . backward-sentence)
    ("k" . bm-previous)
    ("j" . bm-next)))

;; bm
(global-set-key (kbd "M-SPC") 'bm-toggle)

;; quickrun
(global-set-key (kbd "C-\\") 'quickrun)
(global-set-key (kbd "M-\\") 'helm-quickrun)
