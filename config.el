(dolist (package '(evil dash helm transient with-editor magit org-bullets))
 (unless (package-installed-p package)
   (package-install package))
   (require package))

(require 'evil)
(evil-mode 1)
(require 'dash)
(require 'org-bullets)
(require 'helm)

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

;(load-theme 'tron t)

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

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

(setq org-journal-dir "~/.org")

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)
(setq org-list-indent-offset 1)

(setq org-agenda-start-day "-d")
(setq org-agenda-span 8)
(setq org-agenda-start-on-weekday 1)

(add-to-list 'org-modules 'org-habit)

(org-babel-do-load-languages 'org-babel-load-languages
    '(
        (shell . t)
    )
)

(global-set-key (kbd "M-x") 'helm-M-x)
