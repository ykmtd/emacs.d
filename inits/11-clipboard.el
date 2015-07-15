;; clipboard

(defun my-cut-function (text &optional rest)
  (interactive)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xclip" "*Messages*" "xclip" "-select" "clipboard")))
      (process-send-string proc text)
      (process-send-eof proc))))

(defun my-paste-function ()
  (interactive)
  (shell-command-to-string "xclip -o -select clipboard"))

(when (and (not window-system)
           (executable-find "xclip"))
  (setq interprogram-cut-function 'my-cut-function)
  (setq interprogram-paste-function 'my-paste-function))

(if window-system (setq x-select-enable-clipboard t))
