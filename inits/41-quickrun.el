;; quickrun
(require 'quickrun)
(push '("*quickrun*" :stick t) popwin:special-display-config)

(quickrun-add-command "iverilog"
                      '((:command . "iverilog")
                        (:exec . ("%c -o %e %s"
                                  "%e"))
                        (:remove . "%e")
                        (:description . ("Compile Verilog file with iverilog and execute")))
                      :mode 'verilog-mode)
