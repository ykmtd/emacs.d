(if window-system
    (progn
      ;; theme
      (load-theme 'wombat t)

      ;; font settings
      (set-default-font "Inconsolata-11")
      (set-face-font 'default "Inconsolata-11")
      (set-face-font 'font-lock-comment-face       "Inconsolata-11")
      (set-face-font 'font-lock-string-face        "Inconsolata-11")
      (set-face-font 'font-lock-keyword-face       "Inconsolata-11")
      (set-face-font 'font-lock-builtin-face       "Inconsolata-11")
      (set-face-font 'font-lock-function-name-face "Inconsolata-11")
      (set-face-font 'font-lock-variable-name-face "Inconsolata-11")
      (set-face-font 'font-lock-type-face          "Inconsolata-11")
      (set-face-font 'font-lock-constant-face      "Inconsolata-11")
      (set-face-font 'font-lock-warning-face       "Inconsolata-11")))
