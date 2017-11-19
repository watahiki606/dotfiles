
((digest . "5eabf664733bc69c794f751b4229c067") (undo-list (1705 . 1713) (1654 . 1662) (1578 . 1586) (1509 . 1517) (1442 . 1450) (1373 . 1381) (1284 . 1665) ("
;;;### (autoloads nil nil (\"php-array.el\" \"php-classobj.el\" \"php-control-structures.el\"
;;;;;;  \"php-crack.el\" \"php-dio.el\" \"php-dom.el\" \"php-exceptions.el\"
;;;;;;  \"php-exif.el\" \"php-ext.el\" \"php-filesystem.el\" \"php-gd.el\"
;;;;;;  \"php-math.el\" \"php-mode-pkg.el\" \"php-pcre.el\" \"php-regex.el\"
;;;;;;  \"php-simplexml.el\" \"php-strings.el\" \"php-var.el\" \"php-xmlparser.el\"
;;;;;;  \"php-xmlreader.el\") (22935 56882 341816 0))

;;;***
" . -1284) (1276 . 1284) (149 . 258) (990 . 1167) (984 . 985) (870 . 989) (864 . 865) (757 . 869) (751 . 752) (149 . 756) ("
;;;### (autoloads nil \"php-mode\" \"php-mode.el\" (22935 56882 0 0))
;;; Generated autoloads from php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '\"php-mode\" loads) nil (put 'php 'custom-loads (cons '\"php-mode\" loads))))

(defvar php-extra-constants 'nil \"\\
A list of additional strings to treat as PHP constants.\")

(custom-autoload 'php-extra-constants \"php-mode\" nil)

(add-to-list 'interpreter-mode-alist (cons \"php\\\\(?:-?[3457]\\\\(?:\\\\.[0-9]+\\\\)*\\\\)?\" 'php-mode))

(let ((loads (get 'php-faces 'custom-loads))) (if (member '\"php-mode\" loads) nil (put 'php-faces 'custom-loads (cons '\"php-mode\" loads))))

(autoload 'php-mode \"php-mode\" \"\\
Major mode for editing PHP code.

\\\\{php-mode-map}

\\(fn)\" t nil)

(autoload 'php-current-class \"php-mode\" \"\\
Insert current class name if cursor in class context.

\\(fn)\" t nil)

(autoload 'php-current-namespace \"php-mode\" \"\\
Insert current namespace if cursor in namespace context.

\\(fn)\" t nil)

(dolist (pattern '(\"\\\\.php[s345t]?\\\\'\" \"/\\\\.php_cs\\\\(\\\\.dist\\\\)?\\\\'\" \"\\\\.phtml\\\\'\" \"/Amkfile\\\\'\" \"\\\\.amk\\\\'\")) (add-to-list 'auto-mode-alist `(,pattern . php-mode) t))

;;;***
" . -149) (t 22935 56882 0 0) (1707 . 1715) (1654 . 1662) (1578 . 1586) (1509 . 1517) (1442 . 1450) (1373 . 1381) (1276 . 1667) (149 . 258) (990 . 1167) (984 . 985) (870 . 989) (864 . 865) (757 . 869) (751 . 752) (149 . 756) (t 22935 56882 0 0)))
