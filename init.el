;;; init.el --- init.el

;;; Commentary:
;;
(toggle-debug-on-error t)

(add-to-list 'load-path (expand-file-name "local-lisp" user-emacs-directory))

(require 'global-config)
(require 'keymap-config)
(require 'package-config)
(require 'completion-config)
(require 'language-config)
(require 'source-control-config)

(provide 'init)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(corfu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
