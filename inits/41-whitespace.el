;; whitespace
(require 'whitespace)

(setq whitespace-style '(face
                         ;; trailing
                         tabs
                         ))

(set-face-attribute 'whitespace-tab nil
                    :foreground "#236fc6"
                    :background 'unspecified
                    :underline t)

(global-whitespace-mode t)
