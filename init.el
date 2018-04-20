(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    init-loader
    popwin
    undo-tree
    anzu
    flycheck
    markdown-mode
    wdired
    expand-region
    region-bindings-mode
    multiple-cursors
    smartrep
    shell-pop
    sequential-command
    magit
    helm
    helm-swoop
    cuda-mode
    bm
    ruby-end
    quickrun
    centimacro
    helm-gtags
    foreign-regexp
    company
    irony
    company-irony
    flycheck-irony
    helm-c-yasnippet
    jedi-core
    company-jedi
    volatile-highlights
    auto-highlight-symbol
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
   (when not-installed
    (package-refresh-contents)
     (dolist (pkg not-installed)
         (package-install pkg))))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(foreign-regexp/regexp-type (quote ruby))
 '(global-linum-mode t)
 '(package-selected-packages
   (quote
    (markdown-mode+ dumb-jump counsel neotree flycheck-status-emoji cmake-project helm-etags-plus cmake-mode auto-highlight-symbol volatile-highlights company-jedi jedi-core helm-c-yasnippet flycheck-irony company-irony irony company foreign-regexp helm-gtags centimacro quickrun ruby-block ruby-end bm cuda-mode helm-swoop helm magit sequential-command shell-pop smartrep multiple-cursors region-bindings-mode expand-region markdown-mode flycheck anzu undo-tree popwin init-loader)))
 '(reb-re-syntax (quote foreign-regexp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
