(setq general-packages
      '(color-theme-solarized
	))
(el-get 'wait general-packages)

(menu-bar-mode -1) 
(require 'linum)
(global-linum-mode t)

(require 'whitespace)

;; whitespace-mode
;; free of trailing whitespace and to use 80-column width, standard indentation
(setq whitespace-style '(face trailing tabs lines-tail empty space-before-tab
			      indentation space-after-tab)
      whitespace-line-column 80)


(color-theme-solarized-dark)
