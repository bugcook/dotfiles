;;; package --- Summary

;;; Commentary:
;;; custom.el for prelude

;;; Code:

;; Set font
(setq default-frame-alist
      '((font . "Courier New-14")
        (internal-border-width . 0)
        (width . 80)
        (height . 50)))

;; Remove scrollbar
(scroll-bar-mode -1)

;; Turn fringe mode
;; (set-fringe-style "no-fringes")

;; Truncate lines
(set-default 'truncate-lines t)

;; Turn on transient marking
(transient-mark-mode 1)

;; I don't need desktop mode for now
(desktop-save-mode -1)

;; Theme
;; (disable-theme 'zenburn)
;; (load-theme 'solarized-dark t)
;; (load-theme 'solarized-light t)

;; I know that the variable is not free
(eval-when-compile
  (defvar c-basic-indent)
  (defvar web-mode-disable-auto-pairing)
  (defvar web-mode-markup-indent-offset)
  (defvar web-mode-css-indent-offset)
  (defvar web-mode-code-indent-offset)
  (defvar web-mode-indent-style)
  (defvar web-mode-block-padding)
  (defvar web-mode-style-padding)
  (defvar web-mode-script-padding)
  (defvar js-indent-level)
  )

;; Disable bold font
(set-face-bold 'bold nil)
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal))
 (face-list))

;; Mode Line
(set-face-attribute 'mode-line nil
                    :box '(:color "#3f3f3f" :style nil) :background "#2f2f2f")
(set-face-attribute 'mode-line-inactive nil
                    :box '(:color "#3f3f3f" :style nil) :background "#2f2f2f")
(set-face-attribute 'mode-line-highlight nil
                    :box '(:color "#3f3f3f" :style nil) :background "#2f2f2f")

;; web-model
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-disable-auto-pairing t)
  (flycheck-mode -1)

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  (setq web-mode-block-padding 2)
  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2))
(add-hook 'web-mode-hook  'web-mode-hook)


;; Indent
(setq js-indent-level 2)

;; Whitespace
;; (setq whitespace-style '(face tabs empty trailing lines-tail))
(setq-default whitespace-style '(face empty trailing))
(setq indent-tabs-mode t)
;; Tab mode
(defun tab-mode-hook()
  "Hooks for c/c++ mode."
  ;; (setq indent-tabs-mode t)
  (setq tab-width 2)
  ;; (setq c-indent-style "k&r")
  (c-set-offset 'arglist-intro '+)
  (setq-default c-basic-offset 2))
(add-hook 'c-mode-common-hook 'tab-mode-hook)
(add-hook 'cc-mode-hook 'tab-mode-hook)
(add-hook 'c-mode-hook 'tab-mode-hook)
(add-hook 'c++-mode-hook 'tab-mode-hook)

;; Projectile
;; (setq projectile-completion-system 'grizzl)

;; Ruby Mode
;; (defvar ruby-use-smie nil)
;; (defvar ruby-deep-indent-paren nil)

;; Need powerline
;; (prelude-require-package 'powerline)
;; (require 'powerline)
;; (powerline-default-theme)

(provide 'custom)
;;; custom.el ends here
