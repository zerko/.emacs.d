(tool-bar-mode nil)
(scroll-bar-mode nil)

(require 'whitespace)

;; whitespace-mode
;; free of trailing whitespace and to use 80-column width, standard indentation
(setq whitespace-style '(face trailing tabs lines-tail empty space-before-tab
indentation space-after-tab)
      whitespace-line-column 80)

(setq ido-enable-flex-matching +1)

(setq ido-everywhere +1)

(setq ido-create-new-buffer 'always)

(ido-mode +1)

(setq org-M-RET-may-split-line nil)
(setq org-special-ctrl-a/e +1)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; php
(add-to-list 'load-path "~/.emacs.d/vendor/php-mode")
(require 'php-mode)

;; coffee
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
