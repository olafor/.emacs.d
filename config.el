(dolist (package '(evil dash helm transient with-editor magit org-bullets engine-mode rainbow-delimiters projectile
doom-modeline))
     (unless (package-installed-p package)
       (package-install package))
       (require package))

    (require 'evil)
    (evil-mode 1)
    (require 'dash)
    (require 'org-bullets)
    (require 'helm)
  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode 1))
(require 'evil-surround)

(setq user-full-name "Carl Ola Fornander")
(setq user-email-address "ofornander@gmail.com")

(setq column-number-mode t)
(display-time-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 120)
(setq inhibit-splash-screen t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(org-bullets-mode t)

(require 'doom-modeline)
(doom-modeline-mode 1)

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

(require 'org)
(org-babel-load-file "~/org/org_config.org")

(org-babel-do-load-languages 'org-babel-load-languages
      '(
  (shell . t)
  (plantuml . t)))
  
(setq org-plantuml-jar-path (expand-file-name "~/plantuml.jar"))
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

(global-set-key (kbd "M-x") 'helm-M-x)

(require 'engine-mode)
(engine-mode t)
  (defengine duckduckgo
    "https://duckduckgo.com/?q=%s"
    :keybinding "d")

(require 'ido)
(ido-mode t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
