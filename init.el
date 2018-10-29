
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
    company
    irony
    company-irony
    flycheck-irony
    helm-c-yasnippet
    jedi-core
    py-autopep8
    company-jedi
    volatile-highlights
    auto-highlight-symbol
    symbol-overlay
    string-inflection
    yatex
    cmake-mode
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
