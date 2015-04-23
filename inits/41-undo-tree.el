(require 'undo-tree)
(global-undo-tree-mode t)
(push '(" *undo-tree*" :position left) popwin:special-display-config)
