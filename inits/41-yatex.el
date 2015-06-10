;; yatex
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq auto-mode-alist (append '(("\\.tex$" . yatex-mode)) auto-mode-alist))

(add-hook 'yatex-mode-hook
          '(lambda ()
             (auto-fill-mode -1)
             (setq YaTeX-kanji-code nil)
             (setq YaTeX-environment-indent 0)
             ))
