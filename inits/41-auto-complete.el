(require 'auto-complete-config)
(ac-config-default)
(add-hook 'verilog-mode-hook '(lambda () (require 'auto-complete) (auto-complete-mode t) ))
