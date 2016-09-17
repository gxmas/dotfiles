;                   ___ _ __ ___   __ _  ___ ___
;                  / _ \ '_ ` _ \ / _` |/ __/ __|
;                 _| __/ | | | | | (_| | (__\__ \
;                (_\___|_| |_| |_|\__,_|\___|___/
;

(let ((site-lisp-dir (expand-file-name "lisp" user-emacs-directory))
      (elpa-lisp-dir (expand-file-name "elpa" user-emacs-directory)))
  (add-to-list 'load-path site-lisp-dir)
  (dolist (project (directory-files site-lisp-dir t "\\w+"))
    (when (file-directory-p project)
      (add-to-list 'load-path project)))
  (add-to-list 'load-path elpa-lisp-dir)
  (dolist (project (directory-files elpa-lisp-dir t "\\w+"))
    (when (file-directory-p project)
      (add-to-list 'load-path project))))

(require 'color-theme)
(color-theme-initialize)
(if (display-graphic-p)
    (color-theme-deep-blue)
  (color-theme-charcoal-black))

(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	("melpa" . "http://melpa.milkbox.net/packages/")))

;; Keep emacs Custom-settings in separate file.  We load it relatively
;; early so that the rest of the init can override it's value.
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(setq frame-title-format (list system-name " - " '(buffer-file-name "%f" "%b")))
(setq icon-title-format frame-title-format)

(setq-default indicate-empty-lines t)
(fset 'yes-or-no-p 'y-or-n-p)		; Standardize the yes or no question.

(set-input-method "latin-1-prefix")
(toggle-input-method)

(unless (display-graphic-p) (menu-bar-mode nil))

;; CEDET
(semantic-mode 1)
(global-ede-mode 1)
(global-semantic-stickyfunc-mode t)

;; CLANG-FORMAT
(require 'clang-format)
(global-set-key [C-M-tab] 'clang-format-region)

;; WHITESPACE
(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style '(face lines-tail))
(global-set-key [(f12)] 'global-whitespace-mode)

;; COLUM-MARKER
(require 'column-marker)
(global-set-key [?\C-c ?m] 'column-marker-1)
(column-marker-1 80)

;; HOOKS
(add-hook 'before-save-hook 'delete-trailing-whitespace)
