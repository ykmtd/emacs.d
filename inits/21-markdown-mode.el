;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(add-hook 'markdown-mode-hook '(lambda ()
                                 (when (executable-find "gimli")
                                   (add-hook 'after-save-hook 'quickrun nil 'make-it-local))))
