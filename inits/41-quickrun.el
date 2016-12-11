;; quickrun
(require 'quickrun)
(push '("*quickrun*" :stick t) popwin:special-display-config)

(quickrun-add-command "c++11"
                      '((:command . "g++")
                        (:exec . ("%c -o %e %s -std=c++11"
                                  "%e"))
                        (:remove . "%e")
                        (:description . "Compile C++ file with 'gcc -std=c++11' and execute"))
                      :mode 'c++-mode)

(when (executable-find "iverilog")
  (quickrun-add-command "iverilog"
                        '((:command . "iverilog")
                          (:exec . ("%c -o %e %s"
                                    "%e"))
                          (:remove . "%e")
                          (:description . "Compile Verilog file with iverilog and execute"))
                        :mode 'verilog-mode))

(when (executable-find "python3")
  (quickrun-add-command "python3"
                        '((:command . "python3")
                          (:exec . ("%c %s"))
                          (:description . "Run python"))
                        :mode 'python-mode))

(when (executable-find "gimli")
  (quickrun-add-command "markdown-gimli"
                        '((:command . "gimli")
                          (:exec . ("%c"))
                          (:tempfile . nil)
                          (:outputter . null)
                          (:description . "Convert markdown to pdf with gimli"))
                        :mode 'markdown-mode)
  (quickrun-set-default "markdown" "markdown-gimli"))
