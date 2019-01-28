
(require 'highlight-indent-guides)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(setq highlight-indent-guides-method 'column)
;; (setq highlight-indent-guides-character ?\|)

(setq highlight-indent-guides-auto-odd-face-perc 15)
(setq highlight-indent-guides-auto-even-face-perc 25)
;; (setq highlight-indent-guides-auto-character-face-perc 25)
