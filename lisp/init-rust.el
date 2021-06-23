;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'rust-mode)
  ;;(when (maybe-require-package 'racer)
  ;;  (add-hook 'rust-mode-hook #'racer-mode))
  (when (maybe-require-package 'lsp-mode)
    (add-hook 'rust-mode-hook #'lsp-deferred))
  (when (maybe-require-package 'company)
    (add-hook 'racer-mode-hook #'company-mode))
  (when (maybe-require-package 'cargo)
    (add-hook 'rust-mode-hook #'cargo-minor-mode)))


(when (maybe-require-package 'flycheck-rust)
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

;;(when (maybe-require-package 'rustic))

;;(setq rustic-lsp-client 'rls)

(provide 'init-rust)
