(global-company-mode +1)

(setq company-minimum-prefix-length 1)
(setq company-selection-wrap-arround t)
(setq company-idle-delay 0)

(add-to-list 'company-backends 'company-irony)

;; color scheme
(set-face-attribute 'company-tooltip nil
                    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common nil
                    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common-selection nil
                    :foreground "white" :background "steelblue")
(set-face-attribute 'company-tooltip-selection nil
                    :foreground "black" :background "steelblue")
(set-face-attribute 'company-preview-common nil
                    :background nil :foreground "lightgrey" :underline t)
(set-face-attribute 'company-scrollbar-fg nil
                    :background "orange")
(set-face-attribute 'company-scrollbar-bg nil
                    :background "gray40")

;; keybind
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-search-map (kbd "C-n") 'company-select-next)
(define-key company-search-map (kbd "C-p") 'company-select-previous)


(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
(define-key comapny-active-map (kbd "C-i") 'company-complete-selection)

(define-key company-active-map (kbd "C-h") nil)
(define-key company-active-map (kbd "M-d") 'company-show-doc-buffer)
