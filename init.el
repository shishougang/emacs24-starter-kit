;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
 
;; (require 'org)

;; load Org-mode from source when the ORG_HOME environment variable is set
(when (getenv "ORG_HOME")
  (let ((org-lisp-dir (expand-file-name "lisp" (getenv "ORG_HOME"))))
    (when (file-directory-p org-lisp-dir)
      (add-to-list 'load-path org-lisp-dir)
      (require 'org))))

;; load the starter kit from the `after-init-hook' so all packages are loaded
(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq starter-kit-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    ;; only load org-mode later if we didn't load it just now
    ,(unless (and (getenv "ORG_HOME")
                  (file-directory-p (expand-file-name "lisp"
                                                      (getenv "ORG_HOME"))))
       '(require 'org))
    ;; load up the starter kit
    (org-babel-load-file (expand-file-name "starter-kit.org" starter-kit-dir))))


;;add by user
;;(add-to-list 'load-path "~/.emacs.d/src/cedet-1.1/common")
;;(require 'cedet)
;;(require 'semantic-ia)

;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
 
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)
 
;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)
;;add by user


;;; init.el ends here
(put 'set-goal-column 'disabled nil)
