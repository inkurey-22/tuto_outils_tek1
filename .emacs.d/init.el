;; Set indentation (tab) to 4 spaces
(defun set-indentation-to-4-spaces ()
  "Set the tab width to 4 spaces."
  (interactive)
  (setq-default tab-width 4)
  (setq-default indent-tabs-mode nil)) ;; Use spaces instead of tabs

;; Hook the indentation function to major programming modes
(add-hook 'prog-mode-hook 'set-indentation-to-4-spaces)

;; Specifically for C/C++ modes
(add-hook 'c-mode-hook (lambda ()
                         (setq c-basic-offset 4
                               indent-tabs-mode nil)))  ;; Use spaces in C mode
(add-hook 'c++-mode-hook (lambda ()
                           (setq c-basic-offset 4
                                 indent-tabs-mode nil)))  ;; Use spaces in C++ mode

;; Load the Epitech extension
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'epitech)

