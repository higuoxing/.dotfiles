;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Disable toolbar
(tool-bar-mode -1)

;; Disable ring bell.
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; The value is 1/10pt, 160 will give us 16pt.
;; https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'helm)
(straight-use-package 'org)
(straight-use-package 'magit)
(straight-use-package 'which-key)
(which-key-mode)
(straight-use-package 'powerline)
(powerline-default-theme)

;; Proof General
(straight-use-package 'proof-general)

;; helm-mode on startup.
(helm-mode 1)
;; TAB for complete
(define-key helm-map (kbd "TAB") 'helm-execute-persistent-action)
;; M-x
(global-set-key (kbd "M-x") 'helm-M-x)
;; C-x C-f
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; magic key
(define-prefix-command 'magic-key)
(global-set-key (kbd "M-m") 'magic-key)

;; which-key-mode on startup.
(setq which-key-enable-extended-define-key t)
(setq which-key-idle-delay 0.1)

;; buffer-prefix
(define-prefix-command 'buffer-prefix)
(define-key magic-key "b" 'buffer-prefix)
(define-key buffer-prefix "b" 'helm-mini)

;; git-prefix
(define-prefix-command 'git-prefix)
(define-key magic-key "g" 'git-prefix)

;; helm-prefix
