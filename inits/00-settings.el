;; thme
(load-theme 'deeper-blue t)

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
  (recentf-mode 1)
    (require 'recentf-ext))
