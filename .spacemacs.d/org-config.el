
(require 'org)

;; Org Directory
(global-set-key (kbd "C-x M-1") (lambda() (interactive)(find-file "~/Nextcloud/org/")))

;; Inline code evaluation
(setq org-confirm-babel-evaluate nil)
(require 'ob-python)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   ))

(setq org-log-done t)
;; Org Configuration
(with-eval-after-load 'org
  (setq org-agenda-files '("~/Nextcloud/org/"))
  (setq org-agenda-custom-commands
        '(("v" "Simple agenda view"
           ((agenda "")
            (alltodo "")))
          ("c" "CIB agenda view"
           ((agenda "")
            (alltodo ""))
           ((org-agenda-show-log t)
            (org-agenda-ndays 7)
            (org-agenda-log-mode-items '(state))
            (org-agenda-skip-function '(org-agenda-skip-entry-if 'notregexp ":CIB:")))
            )))

;;  (setq org-publish-project-alist
;;        '(("org"
;;           :base-directory "~/Nextcloud/org/"
;;           :publishing-directory "~/Nextcloud/org/html"
;;           :publishing-function org-html-publish-to-html
;;           :section-numbers nil
;;           :with-toc nil
;;                   :html-head "<link rel=\"stylesheet\"
;;                    href=\"solarized-light.css\"
;;                    type=\"text/css\"/>\"
;;        :auto-sitemap t                ; Generate sitemap.org automagically...
;;        :sitemap-filename \"index.org\"
;;        :sitemap-title \"Sitemap\"         ; ... with title 'Sitemap'.
;;        )))
  ;; Alt+Enter opens org menue
  (org-defkey org-mode-map [(meta return)] 'org-meta-return)

  ;; Org Mode
  (setf org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
 ;; (setq org-hierarchical-todo-statistics nil)
 ;; (setq org-bullets-mode nil)
  (setq org-support-shift-select t)

  ;; open tree in right temp buffer
  (defun org-tree-open-in-right-frame ()
    (interactive)
    (org-tree-to-indirect-buffer)
    (windmove-right))

  ;; Capture templates
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/Nextcloud/org/TODOs.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
          ("j" "Journal" entry (file+datetree "~/Nextcloud/org/journal.org")
           "* %?\nEntered on %U\n  %i\n")))
 
;;(setq org-capture-templates
;;      '(("a" "Appointment" entry (file  "~/Dropbox/orgfiles/gcal.org" )
;;	 "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")
;;	("l" "Link" entry (file+headline "~/Dropbox/orgfiles/links.org" "Links")
;;	 "* %? %^L %^g \n%T" :prepend t)
;;	("b" "Blog idea" entry (file+headline "~/Dropbox/orgfiles/i.org" "Blog Topics:")
;;	 "* %?\n%T" :prepend t)
;;	("t" "To Do Item" entry (file+headline "~/Dropbox/orgfiles/i.org" "To Do")
;;	 "* TODO %?\n%u" :prepend t)
;;	("n" "Note" entry (file+headline "~/Dropbox/orgfiles/i.org" "Note space")
;;	 "* %?\n%u" :prepend t)
;;	("j" "Journal" entry (file+datetree "~/Dropbox/journal.org")
;;	 "* %?\nEntered on %U\n  %i\n  %a")
;;	("s" "Screencast" entry (file "~/Dropbox/orgfiles/screencastnotes.org")
;;	 "* %?\n%i\n")))

 (setq org-todo-keywords
        '((sequence "TODO" "DOING"  "WAITING" "|" "DONE" "HOLD" "CANCELLED")))

)
