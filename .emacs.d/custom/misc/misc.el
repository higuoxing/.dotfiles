;; Set HTTP proxy.
(setq url-proxy-services '(("no_proxy" . "")
			   ("http" . "127.0.0.1:8118")
			   ("https" . "127.0.0.1:8118")))

;; Silence alert in emacs.
(setq ring-bell-function 'ignore)

;; Get rid of auto-save files.
(setq make-backup-files nil)
