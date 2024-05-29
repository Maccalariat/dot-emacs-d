;;; language-config.el --- language-config.el

;;; Commentary:
;; 

(use-package python-black
  :ensure t
  :hook (python-mode . python-black-on-save-mode-enable-dwim))

(provide 'language-config)

;;; language-config.el ends here
