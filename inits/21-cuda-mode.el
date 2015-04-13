;; cuda-mode
;; Any files that end in .v should be in verilog mode
(setq auto-mode-alist (cons '("\\.cu\\'" . cuda-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cuda\\'" . cuda-mode) auto-mode-alist))
