(setq user-full-name "Ola Fornander")
(setq user-email-address "ofornander@gmail.com")

(add-to-list 'load-path "~/.emacs.d/repositories/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/repositories/dash")
(require 'dash)

(add-to-list 'load-path "~/.emacs.d/repositories/org-evil")
(require 'org-evil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/repositories/themes/tron-theme")

(setq column-number-mode t)
(display-time-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 120)
(setq inhibit-splash-screen t)

(custom-set-variables
  '(inhibit-startup-screen t)
  '(display-time-24hr-format t)

)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'tron t)

;;; AUCTEX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq TeX-PDF-mode t)

(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
		       (if (frame-parameter nil 'fullscreen) nil 'fullboth))
  (progn
    (if fboundp 'tool-bar-mode) (tool-bar-mode -1))
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
)
(global-set-key [f11] 'fullscreen)
