;; epitech.el -- Custom Emacs extension for Epitech students

;; Set indentation (tab) to 4 spaces
(defun set-indentation-to-4-spaces ()
  "Set the tab width to 4 spaces."
  (interactive)
  (setq-default tab-width 4)
  (setq-default indent-tabs-mode nil)) ;; Use spaces instead of tabs

;; Hook the indentation function to major programming modes
(add-hook 'prog-mode-hook 'set-indentation-to-4-spaces)

;; Define a function to insert the "classic" Epitech header for .c and .h files
(defun generate-classic-header ()
  "Insert the classic Epitech header at the top of .c or .h files."
  (let* ((project-name (read-string "Enter project name: "))  ; Prompt for project name
         (file-description (read-string "Enter file description: "))  ; Prompt for file description
         (header (concat
                  "/*\n"
                  "** EPITECH PROJECT, " (format-time-string "%Y") "\n"
                  "** " project-name "\n"
                  "** File description:\n"
                  "** " file-description "\n"
                  "*/\n\n")))
    (goto-char (point-min))  ;; Move to the top of the buffer
    (insert header)))

;; Define a function to insert the Makefile-style Epitech header
(defun generate-makefile-header ()
  "Insert the Epitech header for Makefiles."
  (let* ((project-name (read-string "Enter project name: "))  ; Prompt for project name
         (file-description (read-string "Enter file description: "))  ; Prompt for file description
         (header (concat
                  "##\n"
                  "## EPITECH PROJECT, " (format-time-string "%Y") "\n"
                  "## " project-name "\n"
                  "## File description:\n"
                  "## " file-description "\n"
                  "##\n\n")))
    (goto-char (point-min))  ;; Move to the top of the buffer
    (insert header)))

;; Define a function to generate the appropriate header based on the file type
(defun generate-epitech-header ()
  "Insert the appropriate Epitech header based on the file type."
  (interactive)
  (cond
   ((or (string-equal (file-name-extension (buffer-file-name)) "c")
        (string-equal (file-name-extension (buffer-file-name)) "h"))
    (generate-classic-header))
   ((string-equal (file-name-nondirectory (buffer-file-name)) "Makefile")
    (generate-makefile-header))
   (t
    (message "No appropriate Epitech header found for this file type."))))

;; Bind the header generation function to C-c h
(global-set-key (kbd "C-c h") 'generate-epitech-header)

(provide 'epitech)

;;; epitech.el ends here
