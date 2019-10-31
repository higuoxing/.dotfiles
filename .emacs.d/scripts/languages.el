;; Some packages may need this.
(use-package yasnippet
  :ensure t)

;; emacs-lsp
(use-package lsp-mode
  :ensure t
  :config (add-hook 'rust-mode-hook #'lsp))

;; company
(use-package company
  :ensure t)

;; -------------------------------- Rust ----------------------------------
;; Configuration for rust.
(use-package rust-mode
  :ensure t)
(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))

;; Auto format on saving action.
(setq rust-format-on-save t)
(use-package cargo
  :ensure t)
(add-hook 'rust-mode-hook
	  'cargo-minor-mode)

;; Setup racer
;; `$ rustup toolchain add nightly`   # Enable rust-nightly.
;; `$ rustup component add rust-src`  # Install rust source code.
;; `$ cargo +nightly install racer`   # Install racer.
(use-package racer
  :ensure t)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotation t)
;; ------------------------------------------------------------------------
