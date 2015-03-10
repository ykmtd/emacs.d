;; disable startup mesage
(setq inhibit-startup-message t)

;; remove menu-bar and tool-bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; show-paren
(show-paren-mode t)

;; \C-h
(global-set-key "\C-h" 'delete-backward-char)
(define-key isearch-mode-map (kbd "C-h") 'isearch-delete-char)

;; backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; completion-ignore-case
(setq completion-ignore-case t)

;; linum
(custom-set-variables '(global-linum-mode t))
(setq linum-format "%3d ")

;; ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

;; delete trailing whitespace
(setq delete-trailing-whitespace-exclude-pattenrs (list "\\.md$" "\\.markdown$" "\\.txt"))

(require 'cl)
(defun delete-trailing-whitespace-with-exclude-pattern ()
  (interactive)
  (cond ((equal nil (loop for pattern in delete-trailing-whitespace-exclude-pattenrs
                          thereis (string-match pattern buffer-file-name)))
         (delete-trailing-whitespace))))

(add-hook 'before-save-hook 'delete-trailing-whitespace-with-exclude-pattern)

;; tab
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 64
                        60 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
(setq-default indent-tabs-mode nil)

(defun untabify-except-makefiles ()
  "Replace tabs with spaces except in makefiles."
  (unless (derived-mode-p 'makefile-mode)
    (untabify (point-min) (point-max))))

(add-hook 'before-save-hook 'untabify-except-makefiles)

;; auto-revert-mode
(global-auto-revert-mode 1)

;; next-word
(defun next-word (p)
   "Move point to the beginning of the next word, past any spaces"
   (interactive "d")
   (forward-word)
   (forward-word)
   (backward-word))

;; next-sentence
(defun next-sentence (p)
   "Move point to the beginning of the next sentence, past any spaces"
   (interactive "d")
   (forward-sentence)
   (forward-sentence)
   (backward-sentence))

;; saveplace
(load "saveplace")
(setq-default save-place t)

;; recentf
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
        (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1))
