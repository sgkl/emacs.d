;;; init-go.el --- support go language ---
;;; Commentary:
;;; Code:

(maybe-require-package 'ggtags)

(add-hook 'c-mode-common-hook
          (lambda()
            (when (derived-mode-p 'c-mode 'c++-mode)
              (ggtags-mode 1))))

(provide 'init-ggtags)
;;; init-org.el ends here
