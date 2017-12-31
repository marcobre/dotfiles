;; Text Editing and Selection Configuration
(delete-selection-mode 1)
(setq-default fill-column 120)
;; (setq cua-mode nil)

;;; Buffer Display Configuration
(setq powerline-default-separator 'utf-8)
(setq word-wrap 1)
(global-visual-line-mode t)

;;; GUI Configuration
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(menu-bar-mode 1)

;; Scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Link Behaviour
(setq vc-follow-symlinks t)

;; Evil fine undo
(setq evil-want-fine-undo t)

;; Disable autosaving and backups and lockfiles
(setq
 auto-save-default t
 backup-inhibited t
 create-lockfiles nil)


;; Allow 20MB of memory (instead of 0.76MB default) before calling
;; garbage collection. This means GC runs less often, which speeds
;; up some operations
(setq gc-cons-threshold 20000000)

;; By default, BACKSPACE ON EMACS turns a tab character into a set of spaces
;; & deletes one. This sets backspace to delete 1 character instead of 1 column.
(global-set-key (kbd "DEL") 'backward-delete-char)


;; Search settings
(define-key global-map [remap isearch-forward] 'isearch-forward-regexp)
(define-key global-map [remap isearch-backward] 'isearch-backward-regexp)
(setq-default
 isearch-allow-scroll t                 ; Allow scrolling in an isearch session
 lazy-highlight-cleanup nil             ; Leave highlights after an isearch session
 lazy-highlight-initial-delay 0)        ; Start highlighting immediately


;; M-up and M-down move lines
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
