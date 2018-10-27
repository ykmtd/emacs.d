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
