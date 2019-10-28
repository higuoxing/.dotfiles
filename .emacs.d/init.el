(package-initialize)
(require 'package)
(require 'use-package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; Here, we use HTTP proxy.
(setq url-proxy-services '(("no_proxy" . "")
                           ("http" . "127.0.0.1:8118")
			   ("https" . "127.0.0.1:8118")))

;; Currently, this auto-generated file is useless.
(setq custom-file (concat user-emacs-directory "/garbage.el"))

;; Language configurations.
(add-to-list 'load-path (concat user-emacs-directory "/custom/languages/"))


;; Appearance configurations.
(add-to-list 'load-path (concat user-emacs-directory "/custom/appearance/"))
;; Load theme.el
(load "theme")


;; Misc configurations.
(add-to-list 'load-path (concat user-emacs-directory "/custom/misc/"))
;; Load misc.el
(load "misc")

(require 'nyan-mode)

;; Rust-mode configuration.
(require 'rust-mode)
;; Use <SPC> to indent.
(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))
;; Auto format using rustfmt
(setq rust-format-on-save t)
;; Use cargo.el
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(use-package lsp-mode
	     :config
	     (add-hook 'rust-mode-hook #'lsp))
