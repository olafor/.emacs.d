(setq user-full-name "Carl Ola Fornander")
(setq user-email-address "ofornander@gmail.com")

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(add-to-list 'load-path "~/.emacs.d/dash")
(require 'dash)

(add-to-list 'load-path "~/.emacs.d/org-evil")
(require 'org-evil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tron-theme")

(setq column-number-mode t)
(display-time-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;(linum-mode)

(set-face-attribute 'default nil :height 120)

(custom-set-variables
    '(display-time-24hr-format t)

)

(load-theme 'tron t)

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

(setq inhibit-splash-screen t)
(add-hook 'after-init-hook (lambda () (org-agenda nil "x")))
(setq org-agenda-window-setup 'current-window)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
