;; whitespace
(require 'whitespace)

(setq whitespace-style '(face
                         tabs
                         ))

(global-whitespace-mode t)

(set-face-attribute 'whitespace-tab nil
                    :foreground "LightSkyBlue"
                    :underline t)
