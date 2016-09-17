;                    ___ _ __ ___   __ _  ___ ___
;                   / _ \ '_ ` _ \ / _` |/ __/ __|
;                  _| __/ | | | | | (_| | (__\__ \
;                 (_)___|_| |_| |_|\__,_|\___|___/
;

(if (< emacs-major-version 25)
    (setq tramp-ssh-controlmaster-options
          "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no"))

;; Set path to dependencies
(let ((elpa-lisp-dir (expand-file-name "elpa" user-emacs-directory)))
  (dolist (project (directory-files elpa-lisp-dir t "\\w+"))
    (when (file-directory-p project)
      (add-to-list 'load-path project))))

(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;; Setup git-commit mode
(require 'git-commit)
(add-hook 'git-commit-mode-hook (lambda()
                                  (ruler-mode)
                                  (flyspell-mode t)))
;; Switch to git-commit mode
(git-commit-mode)
