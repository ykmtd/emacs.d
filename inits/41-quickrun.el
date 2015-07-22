;; quickrun
(require 'quickrun)
(push '("*quickrun*" :stick t) popwin:special-display-config)

(when (executable-find "iverilog")
  (quickrun-add-command "iverilog"
                        '((:command . "iverilog")
                          (:exec . ("%c -o %e %s"
                                    "%e"))
                          (:remove . "%e")
                          (:description . ("Compile Verilog file with iverilog and execute")))
                        :mode 'verilog-mode))

(when (executable-find "gimli")
  (quickrun-add-command "markdown-gimli"
                        '((:command . "gimli")
                          (:exec . ("%c"))
                          (:tempfile . nil)
                          (:outputter . null)
                          (:description . ("Convert markdown to pdf with gimli")))
                        :mode 'markdown-mode)
  (quickrun-set-default "markdown" "markdown-gimli"))
