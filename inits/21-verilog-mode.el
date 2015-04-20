;; Verilog-mode
(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tb\\'" . verilog-mode) auto-mode-alist))

(add-hook 'verilog-mode-hook '(lambda ()
                                (font-lock-mode 1)
                                (electric-pair-mode t)
                                (electric-indent-mode t)
                                ))

(setq verilog-indent-level             4
      verilog-indent-level-module      4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral  4
      verilog-indent-level-directive   4)
