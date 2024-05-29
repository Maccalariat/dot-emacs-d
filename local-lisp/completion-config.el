;;; completion-config.el --- completion-config.el

;;; Commentary:
;; 

(use-package corfu
  :ensure t
  :custom
  (corfu-cycle t)
  (corfu-auto nil)
  (corfu-quit-no-match t)
  (corfu-separator ?\s)
  :init
  (global-corfu-mode))

(use-package emacs
  :ensure t
  :init
  (setq tab-always-indent 'complete)
  (setq text-mode-ispell-word-completion nil)
  (setq read-extended-command-predicate #'command-completion-default-include-p))

(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package eglot
  :ensure t
  :config
  (add-hook 'python-mode-hook 'eglot-ensure))

;;
(provide 'completion-config)

;;; completion-config.el ends here
