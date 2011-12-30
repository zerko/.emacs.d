(require 'el-get)
(setq el-get-sources
      '(
	(:name python-pylint
               :type git
               :url "git://gist.github.com/302848.git"
               :features python-pylint)
        ))



(setq python-packages
      '(python-mode
	python-pylint
	python-pep8
	))
(el-get 'sync python-packages)
