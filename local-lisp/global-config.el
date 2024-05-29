;;; global-config.el --- global-config.el

;;; Commentary:
;;

(tool-bar-mode -1)             ; Hide the outdated icons
(scroll-bar-mode -1)           ; Hide the always-visible scrollbar
(setq inhibit-splash-screen t) ; Remove the "Welcome to GNU Emacs" splash screen
(setq use-file-dialog nil)      ; Ask for textual confirmation instead of GUI


(global-hl-line-mode t)
(global-display-line-numbers-mode t)
(column-number-mode 1)
(global-subword-mode)

(setq initial-major-mode 'text-mode)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq tramp-backup-directory-alist backup-directory-alist)

(setq abbrev-file-name "~/.emacs.d/.abbrev")

(setq read-file-name-completion-ignore-case t)

(setq use-short-answers t)

(setq tab-width 4)
(setq c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(load-theme 'tsdh-dark)
(provide 'global-config)

;;; global-config.el ends here
