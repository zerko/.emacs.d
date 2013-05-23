(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(require 'whitespace)

;; whitespace-mode
;; free of trailing whitespace and to use 80-column width, standard indentation
(setq whitespace-style '(face trailing tabs lines-tail empty space-before-tab
indentation space-after-tab newline newline-mark space-mark tab-mark)
      whitespace-line-column 80)

(require 'uniquify)
(setq 
  uniquify-buffer-name-style 'forward)


(setq ido-enable-flex-matching +1)
(setq ido-everywhere +1)
(setq ido-create-new-buffer 'always)

(ido-mode +1)

;;
(global-set-key (kbd "C-<tab>") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-<tab>") 'dabbrev-expand)


;; org
(setq org-M-RET-may-split-line nil)
(setq org-special-ctrl-a/e +1)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; php
(add-to-list 'load-path "~/.emacs.d/vendor/php-mode")
(require 'php-mode)
(setq c-basic-offset 4)
(setq c-block-comment-prefix "*")
(add-hook 'prog-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (whitespace-mode +1)))

(add-to-list 'load-path "~/.emacs.d/vendor/webmode")
(require 'web-mode)
(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'web-mode-hook)
(add-to-list 'auto-mode-alist '("/\\(views\\|templates\\)/.*\\.php\\'" . web-mode))


;; coffee
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(setq coffee-tab-width 2)
;(add-hook 'coffee-mode-hook
;          '(lambda ()
;             (set (make-local-variable 'tab-width) 2)))


;; js2
(add-to-list 'load-path "~/.emacs.d/vendor/js2")
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; npm
(add-to-list 'load-path "~/.emacs.d/vendor/npm.el")
(require 'npm)



;; yas
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(setq yas/snippet-dirs
      '("~/.emacs.d/snippets/"
	"~/.emacs.d/vendor/snippets/php-mode/"
	))
(yas/reload-all)
(add-hook 'prog-mode-hook
          '(lambda ()
             (yas/minor-mode)))

;; solarized
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/solarized")
;;(load-theme 'solarized-dark t)
;;(add-to-list 'load-path "~/.emacs.d/vendor/solarized-alt")
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/solarized-alt")
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/zenburn")

(load-theme 'zenburn t)



;; magit
(add-to-list 'load-path "~/.emacs.d/vendor/magit")
(require 'magit)

;; ace-jump-mode
(add-to-list 'load-path "~/.emacs.d/vendor/acejump")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)


(add-to-list 'load-path "~/.emacs.d/vendor/helm")
(require 'helm-config)

(define-key global-map (kbd "M-i") 'helm-imenu)

(add-to-list 'load-path "~/.emacs.d/vendor/pretty-symbols")
(require 'pretty-symbols)


;; fullscreen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)

;(add-to-list 'load-path "/usr/lib/erlang/lib/tools-2.6.8/emacs")
;(setq erlang-root-dir "/usr/lib/erlang")
;(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
;(require 'erlang-start)

(add-to-list 'load-path "~/.emacs.d/vendor/rainbow-delimiters")
(require 'rainbow-delimiters)


(add-to-list 'load-path "~/.emacs.d/vendor")
(require 'paredit)

(add-to-list 'load-path "~/.emacs.d/vendor/clojure-mode")
(require 'clojure-mode)

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/nrepl")
(require 'nrepl)

(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)


(add-to-list 'load-path "~/.emacs.d/vendor/s")
(add-to-list 'load-path "~/.emacs.d/vendor/dash")
(add-to-list 'load-path "~/.emacs.d/vendor/projectile")
(require 'projectile)
(projectile-global-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((java-mode . "java") (awk-mode . "awk") (other . "bsd"))))
 '(js2-highlight-level 3))
