;; whitespace
(require 'whitespace)

(setq whitespace-style '(face
                         tabs
                         tab-mark
                         ))

(global-whitespace-mode t)

(set-face-attribute 'whitespace-tab nil
                    :foreground "LightSkyBlue"
                    :underline t)
