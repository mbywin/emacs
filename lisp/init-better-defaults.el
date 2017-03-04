;; 禁止自动生成配置文件
(setq make-backup-files nil)

;; 选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

;; 自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 设置最近打开文件配置
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; 末尾
(provide 'init-better-defaults)
