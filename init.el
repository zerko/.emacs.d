(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(defconst emacs-config-dir "~/.emacs.d/configs/")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq
 el-get-sources
 '(el-get))

(defun load-cfg-files (filelist)
  (dolist (file filelist)
    (let ((filename (expand-file-name (concat emacs-config-dir file ".el"))))
      (if (file-exists-p filename)
          (progn
            (load (concat filename))
            (message "Loaded config file: %s" filename))
       (message "Could not load file: %s" filename)))))

(load-cfg-files '("cfg_general"
		  "cfg_python"
		  "cfg_ido"
		  "cfg_org"
                   ))

(el-get 'sync)

