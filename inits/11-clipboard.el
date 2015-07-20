;; clipboard

(defun cut-with-xclip (text &optional rest)
  (interactive)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xclip" "*Messages*" "xclip" "-select" "clipboard")))
      (process-send-string proc text)
      (process-send-eof proc))))

(defun paste-with-xclip ()
  (interactive)
  (shell-command-to-string "xclip -o -select clipboard"))

(defun cut-with-pbcopy (text &optional rest)
  (interactive)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(defun paste-with-pbpaste ()
  (interactive)
  (shell-command-to-string "pbpaste"))

(when (and (not window-system)
           (executable-find "xclip"))
  (setq interprogram-cut-function 'cut-with-xclip)
  (setq interprogram-paste-function 'paste-with-xclip))

(when (and (not window-system)
           (executable-find "pbcopy"))
  (setq interprogram-cut-function 'cut-with-pbcopy)
  (setq interprogram-paste-function 'paste-with-pbpaste))

(if window-system (setq x-select-enable-clipboard t))
