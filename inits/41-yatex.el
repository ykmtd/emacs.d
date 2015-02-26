;; yatex
yatex(setq auto-mode-alist (append '(("\\.tex$" . yatex-mode)) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq YaTeX-kanji-code nil)
(add-hook 'yatex-mode-hook '(lambda () (auto-fill-mode -1)))
