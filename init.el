(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gun/")
;			 ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
;			 ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))


(require 'init-elpa)

;(package-refresh-contents)
(require-package 'diminish)

(require 'init-company)


(require 'init-rust)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(flycheck-rust company racer rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
