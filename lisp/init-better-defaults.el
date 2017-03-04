;; 禁止自动生成配置文件
(setq make-backup-files nil)

;; 选中一段文字 之后输入一个字符会替换掉你选中部分的文字。
(delete-selection-mode 1)

;; 自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 开启全局 Company 补全
(global-company-mode 1)

;; Emacs 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 关闭自动保存文件
(setq auto-save-default nil)

;; 自动将光标移动到新创建的窗口中
(require 'popwin)
(popwin-mode 1)

;; 关闭警告提示音
(setq ring-bell-function 'ignore)

;; 简写yes or no 
(fset 'yes-or-no-p 'y-or-n-p)

;; 总是递归删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; 启用 dired-x 可以让每一次进入 Dired 模式时，使用新的快捷键 C-x C-j 就可以进 入当前文件夹的所在的路径。
(require 'dired-x)

;; 则可以使当一个窗口（frame）中存在两个分屏 （window）时，将另一个分屏自动设置成拷贝地址的目标
(setq dired-dwin-target 1)

(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; 设置最近打开文件配置
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; 末尾
(provide 'init-better-defaults)
