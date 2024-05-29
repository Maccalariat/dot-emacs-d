;;; early-init.el --- early-init.el

;;; Commentary:
;; 

(setq gc-cons-threshold most-positive-fixnum)
(setq package-enable-at-startup nil)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;;; Log startup stats
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))
(add-hook 'after-init-hook (lambda()
			     (setq gc-cons-threshold 134217728)))

(provide 'early-init)

;;; early-init.el ends here
