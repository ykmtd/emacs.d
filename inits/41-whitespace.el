;; whitespace
(require 'whitespace)

(setq whitespace-style '(face
                         trailing
                         tabs
                         ))

(set-face-attribute 'whitespace-tab nil
                    :foreground 'unspecified
                    :background 'unspecified
                    :underline t)

(global-whitespace-mode t)
