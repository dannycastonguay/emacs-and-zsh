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

;; Completion prompts
(require 'ido)
(ido-mode)

;; Enable highlight line where the cursor is
(global-hl-line-mode)

;; https://github.com/brianc/jade-mode/
(add-to-list 'load-path "~/.elisp/jade-mode")
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . sws-mode))

;; for sass
(add-to-list 'load-path "~/.elisp/")
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

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
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(tab-width 4))

;; Automatically added by emacs
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
