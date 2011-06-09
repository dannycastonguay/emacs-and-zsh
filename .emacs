;;(require 'org-install)
;;(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-ca" 'org-agenda)
;;(setq org-log-done t)

;; Change cursor color according to mode; inspired by
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically
;(setq djcb-read-only-color       "gray")
;; valid values are t, nil, box, hollow, bar, (bar . WIDTH), hbar,
;; (hbar. HEIGHT); see the docs for set-cursor-type

;(setq djcb-read-only-cursor-type 'hbar)
;(setq djcb-overwrite-color       "red")
;; (setq djcb-overwrite-cursor-type 'box)
;; (setq djcb-normal-color          "red")
;; (setq djcb-normal-cursor-type    'bar)

;; (defun djcb-set-cursor-according-to-mode ()
;;   "change cursor color and type according to some minor modes."

;;   (cond
;;     (buffer-read-only
;;       (set-cursor-color djcb-read-only-color)
;;       (setq cursor-type djcb-read-only-cursor-type))
;;     (overwrite-mode
;;       (set-cursor-color djcb-overwrite-color)
;;       (setq cursor-type djcb-overwrite-cursor-type))
;;     (t 
;;       (set-cursor-color djcb-normal-color)
;;       (setq cursor-type djcb-normal-cursor-type))))

;; (add-hook 'post-command-hook 'djcb-set-cursor-according-to-mode)

;; Scroll down with the cursor,move down the buffer one 
;; line at a time, instead of in larger amounts.
(setq scroll-step 4)

;; Completion prompts
(require 'ido)
(ido-mode)

;; Enable highlight line where the cursor is
(global-hl-line-mode 1)

;; load all modes in ~/.elisp
(add-to-list 'load-path "~/.elisp/")

;; https://github.com/brianc/jade-mode/
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . jade-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; for sass
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

;; for markdown
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))

;; for coffee script
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; for saving current editing status including the window splitting
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
(define-key ctl-x-map "S" 'save-current-configuration) 
(define-key ctl-x-map "F" 'resume)
(define-key ctl-x-map "K" 'wipe)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(global-whitespace-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(tab-width 4)
 '(whitespace-global-modes (quote (jade-mode)))
 '(whitespace-style (quote (face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark))))

;; Automatically added by emacs
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
