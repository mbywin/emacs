;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像
(when (>= emacs-major-version 24)
   (require 'package)
   (package-initialize)
   (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
	      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar maioboyong/packages '(
	;; --- Auto-completion ---
	company
	;; --- Better Editor ---
	hungry-delete
	swiper
	counsel
	smartparens
	;; --- Major Mode ---
	js2-mode
	;; --- Minor Mode ---
	nodejs-repl
	exec-path-from-shell
	;; --- Themes ---
	monokai-theme
	;; solarized-theme
	) "Default packages")

(setq package-selected-packages maioboyong/packages)

(defun maioboyong/packages-installed-p ()
   (loop for pkg in maioboyong/packages
   when (not (package-installed-p pkg)) do (return nil)
   finally (return t)))

(unless (maioboyong/packages-installed-p)
   (message "%s" "Refreshing package database...")
   (package-refresh-contents)
   (dolist (pkg maioboyong/packages)
     (when (not (package-installed-p pkg))
 (package-install pkg))))

;; 文件末尾
(provide 'init-packages)
