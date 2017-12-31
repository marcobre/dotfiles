;; Python
(setq python-shell-interpreter "python3")
(setq python-tab-width 4)

;; Shell Config
(setq explicit-shell-file-name "/bin/bash")

;; Pandoc
;; (setq org-pandoc-options-for-markdown '((atx-headers . t)))
;; (setq org-pandoc-options-for-latex-pdf '((latex-engine . "xelatex")))

;; Markdown Mode
(setq markdown-italic-underscore t)
(setq markdown-asymmetric-header t)
(setq markdown-list-indent-width 4)

;; Deft (nv) config
(setq deft-extensions '("md" "tex" "org" "txt"))
(setq deft-directory "~/Dropbox/Notes")
(setq deft-text-mode 'markdown-mode)
