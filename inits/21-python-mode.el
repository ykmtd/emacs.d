;; python
(require 'jedi-core)
(require 'py-autopep8)

(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(setq jedi:complete-on-dot t)

(add-hook 'python-mode-hook
          '(lambda ()
             (setq python-python-command "python3")

             (electric-pair-mode t)
             (electric-indent-mode t)

             (jedi:setup)
             ))
