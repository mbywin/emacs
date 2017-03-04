;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 安装主题
(load-theme 'monokai 1)

;; 窗口自动全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 字体配置
(set-face-attribute
 'default nil :font "Consolas" :height 125)
;; 中文字体配置
(dolist (charset '(han gb18030 chinese-gbk bopomofo cjk-misc gb18030))
  (set-fontset-font t
		    charset
		    (font-spec :family "kaiti")))
(set-fontset-font t 'unicode "Symbola" nil 'append)
(set-fontset-font t 'unicode "Segoe UI Emoji" nil 'append)
(set-fontset-font t 'unicode "STIX" nil 'append)

;; 末尾
(provide 'init-ui)
