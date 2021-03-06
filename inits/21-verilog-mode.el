;; Verilog-mode
(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tb\\'" . verilog-mode) auto-mode-alist))

(add-hook 'verilog-mode-hook '(lambda ()
                                (font-lock-mode 1)
                                (electric-pair-mode t)
                                (add-to-list 'electric-pair-pairs '(?[ . ?]))
                                ))

(setq verilog-indent-level             4
      verilog-indent-level-module      4
      verilog-indent-level-declaration 4
      verilog-indent-level-behavioral  4
      verilog-indent-level-directive   4
      verilog-auto-newline nil)
;; (setq verilog-indent-level             2
;;       verilog-indent-level-module      2
;;       verilog-indent-level-declaration 2
;;       verilog-indent-level-behavioral  2
;;       verilog-indent-level-directive   2
;;       verilog-auto-newline nil)
