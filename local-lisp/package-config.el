;;; package-config.el --- package-config.el

;;; Commentary:
;; 

;;; setup package management
(require 'package)

(add-to-list 'package-archives '("MELPA" . "http://melpa.org/packages/"))

(package-initialize)

(require 'use-package)


(provide 'package-config)

;;; package-config.el ends here
