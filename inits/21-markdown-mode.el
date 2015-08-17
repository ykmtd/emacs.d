;; markdown-mode
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(add-hook 'markdown-mode-hook '(lambda ()
                                 (set (make-local-variable 'whitespace-action) nil)
                                 (electric-indent-local-mode -1)
                                 (local-set-key "\C-i" '(lambda () (interactive) (insert "\t")))
                                 (local-set-key "\C-m" 'newline)
                                 (when (executable-find "gimli")
                                   (add-hook 'after-save-hook 'quickrun nil 'make-it-local))))
