;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
 
(require 'org)

;; remember this directory
(setq starter-kit-dir
      (file-name-directory (or load-file-name (buffer-file-name))))

;; load up the starter kit
(org-babel-load-file (expand-file-name "starter-kit.org" starter-kit-dir))


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
