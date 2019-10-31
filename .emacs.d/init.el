(package-initialize)
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

;; Add my custom scripts
(add-to-list 'load-path (concat user-emacs-directory "/scripts/"))

;; Load "appearance.el"
(load "appearance")

;; Load "misc.el"
(load "misc")

;; Load "languages.el"
(load "languages")

;; Load "file-tree.el"
(load "file-tree")
