(require 'whitespace)

;; whitespace-mode
;; free of trailing whitespace and to use 80-column width, standard indentation
(setq whitespace-style '(face trailing tabs lines-tail empty space-before-tab
			      indentation space-after-tab)
      whitespace-line-column 80)
