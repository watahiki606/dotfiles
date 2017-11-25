
((digest . "9befe16e56d4ba84dc84eeedad49034d") (undo-list nil ("
" . -13867) ((marker . 13867) . -1) ((marker . 13867) . -1) ((marker . 13867) . -1) nil ("(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jdee-server-dir \"/Users/s/Dropbox/projects/dotfiles/.emacs.d\"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )" . 13868) ((marker . 13867) . -256) ((marker . 13867) . -80) ((marker) . -551) ((marker*) . 1) ((marker) . -551) ((marker*) . 239) ((marker) . -551) nil (13090 . 13091) nil ("
" . 13090) ((marker . 14092) . -1) ((marker . 14092) . -1) nil ("
" . 12398) nil (12269 . 12271) nil ("こと" . -12269) (12269 . 12271) ("こｔ" . -12269) (12269 . 12271) ("こ" . -12269) (12269 . 12270) ("ｋ" . -12269) (12269 . 12270) ("k" . -12269) nil ("o" . -12270) nil (12269 . 12271) nil ("
" . 11959) ((marker . 13623) . -1) ((marker . 13623) . -1) nil (" " . -11615) nil ("
" . 11613) nil ("k" . -11613) nil (11613 . 11614) nil ("
" . -10538) ((marker . 13867) . -1) nil (";;company
;;(require 'company)
;;(require 'company-emacs-eclim)
;;(company-emacs-eclim-setup)
;;  (global-company-mode 1)
;;  (global-set-key (kbd \"C-M-i\") 'company-complete)
;;  (define-key company-active-map (kbd \"C-n\") 'company-select-next)
;;  (define-key company-active-map (kbd \"C-p\") 'company-select-previous)
;;  (define-key company-search-map (kbd \"C-n\") 'company-select-next)
;;  (define-key company-search-map (kbd \"C-n\") 'company-select-previous)
;;  (define-key company-active-map (kbd \"<tab>\") 'company-complete-selection)
;;(setq company-idle-delay 0)
;;(setq company-minimum-prefix-length 2)
;;(setq company-selection-wrap-around t)
" . 10539) ((marker . 13640) . -567) ((marker . 13640) . -567) ((marker . 13666) . -537) ((marker . 13666) . -537) ((marker . 13667) . -459) ((marker . 13667) . -459) ((marker . 13681) . -386) ((marker . 13681) . -386) ((marker . 13733) . -317) ((marker . 13733) . -317) ((marker . 13734) . -244) ((marker . 13734) . -244) ((marker . 13747) . -175) ((marker . 13747) . -175) ((marker . 13799) . -122) ((marker . 13799) . -122) ((marker . 13800) . -94) ((marker . 13800) . -94) ((marker . 13811) . -64) ((marker . 13811) . -64) ((marker . 13830) . -31) ((marker . 13830) . -31) ((marker) . -649) 11188 nil ("
" . 10538) nil ("
" . 10538) nil (";;))" . 10538) nil (" " . -10518) nil (" " . -10519) nil (" " . -10520) nil (" " . -10521) nil (" " . -10522) nil ("
" . 10518) nil (";;     (define-key yas-keymap (kbd \"<tab>\") nil)" . 10518) nil ("
" . 10518) nil (";;     ;; companyと競合するのでyasnippetのフィールド移動は \"C-i\" のみにする" . 10518) nil ("
" . 10518) nil (";;  '(progn" . 10518) nil ("
" . 10518) nil (";;(eval-after-load \"yasnippet\"" . 10518) nil ("
" . 10497) nil (";;             (expand-file-name \"~/.emacs.d/elpa/yasnippet-20170923.1646/\"))" . 10497) nil ("
" . 10497) nil (";;(add-to-list 'load-path" . 10497) nil ("
" . 10497) nil (";;パスを通す" . 10497) (t 23064 61858 0 0) nil (10531 . 10533) nil (10505 . 10507) nil (9817 . 9818) nil ("
" . 9546) nil ("
" . 9030) nil ("  ;;                         'javascript-gjslint)" . 9030) nil ("
" . 9030) nil (";;(flycheck-add-next-checker 'javascript-jshint" . 9030) nil ("は" . -8663) nil (";" . -8040) nil (";" . -8041) nil (";" . -7989) nil (";" . -7990) nil ("
" . -7953) nil ("
" . -7954) nil (";;  redo+
;;C-M-/
(require 'redo+)
(global-set-key (kbd \"C-z\") 'redo)
(setq undo-no-redo t) ; 過去のundoがredoされないようにする
(setq undo-limit 600000)
(setq undo-strong-limit 900000)" . 7955) nil (";; ▼要拡張機能インストール▼" . 7853) nil ("
" . 7853) nil ("
" . 7758) nil (";; ▼要拡張機能インストール▼" . 7758) nil ("
" . 7469) nil (";; ▼要拡張機能インストール▼" . 7469) nil ("
" . 6258) nil ("(add-to-list 'package-archives '(\"melpa\" . \"http://melpa.milkbox.net/packages/\") t)" . 6258) nil ("
" . 6258) nil ("      \"http://marmalade-repo.org/packages/\"))" . 6258) nil ("
" . 6258) nil ("    '(\"marmalade\" ." . 6258) nil ("
" . 6258) nil ("(add-to-list 'package-archives" . 6258) nil ("
" . -6203) nil (";; ▼要拡張機能インストール▼
;; 拡張機能を自動インストール──auto-install
;; auto-installの設定
;;(when (require 'auto-install nil t)

  ;; インストールディレクトリを設定する 初期値は ~/.emacs.d/auto-install/
;;  (setq auto-install-directory \"~/.emacs.d/elisp/\")

  ;; EmacsWikiに登録されているelisp の名前を取得する
;;  (auto-install-update-emacswiki-package-name t)

  ;; 必要であればプロキシの設定を行う
  ;; (setq url-proxy-services '((\"http\" . \"localhost:8339\")))
  ;; install-elisp の関数を利用可能にする
;;  (auto-install-compatibility-setup))
" . 6204) 6662 (t 23064 54960 0 0) nil (16927 . 16928) nil (nil rear-nonsticky nil 16926 . 16927) (nil fontified nil 16911 . 16927) (16911 . 16927) nil (16910 . 16911) nil (nil rear-nonsticky nil 16909 . 16910) (nil fontified nil 16895 . 16910) (16895 . 16910) nil (16893 . 16895) nil (16891 . 16893) (t 23064 54549 0 0) nil (6622 . 6624) nil (6455 . 6457) nil (6363 . 6365) nil (6271 . 6273) (t 23064 54358 0 0) nil (7955 . 7987) ("  ;; Migemoを利用できる環境であればMigemoを使う" . 7955) nil ("
" . 8348) nil (";; ▼要拡張機能インストール▼" . 8348) nil ("
" . 7635) nil (";;https://www.emacswiki.org/emacs/download/color-moccur.el" . 7635) nil ("
" . 7604) nil (";; ▼要拡張機能インストール▼" . 7604) (t 23064 44299 0 0) nil ("
" . -16976) nil ("
" . -16977) nil ("(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode ((\"README\\\\.md\\\\'\" . gfm-mode)
         (\"\\\\.md\\\\'\" . markdown-mode)
         (\"\\\\.markdown\\\\'\" . markdown-mode))
  :init (setq markdown-command \"multimarkdown\"))
" . 16978) (t 23064 43147 0 0) nil (17224 . 17225) nil (nil rear-nonsticky nil 17223 . 17224) (nil fontified nil 16978 . 17224) (16978 . 17224) nil (16976 . 16978) (t 23064 39831 0 0) nil (")" . 7852) (7851 . 7852) ("
" . 7850) (7851 . 7852) 7852 nil ("
" . 7852) (7851 . 7852) (")" . 7850) (7851 . 7852) 7852 nil (")" . 7852) (7851 . 7852) ("
" . 7850) (7851 . 7852) 7852 nil ("
" . 7852) (7851 . 7852) (")" . 7850) (7851 . 7852) 7852 nil (")" . 7852) (7851 . 7852) ("
" . 7850) (7851 . 7852) 7852 nil ("
" . 7852) (7851 . 7852) (")" . 7850) (7851 . 7852) 7852 nil (")" . 7852) (7851 . 7852) ("
" . 7850) (7851 . 7852) 7852 nil ("
" . 7852) (7851 . 7852) (")" . 7850) (7851 . 7852) nil ("a" . -6669) nil ("u" . -6670) nil ("t" . -6671) nil ("o" . -6672) nil ("-" . -6673) nil ("i" . -6674) nil ("n" . -6675) nil ("s" . -6676) nil ("t" . -6677) nil ("a" . -6678) nil ("l" . -6679) nil ("l" . -6680) nil ("の" . -6681) nil ("後" . -6682) nil ("継" . -6683) nil ("、" . -6684) nil ("
" . 6655) nil ("
" . 6655) nil ("
" . 6655) nil (";; ▼要拡張機能インストール▼" . 6655) nil (";;  auto-installを利用する" . 6672) nil ("
" . 6694) nil (";;(when (require 'redo+ nil t)" . 6694) nil ("
" . 6694) nil (";; (install-elisp \"http://www.emacswiki.org/emacs/download/redo+.el\")" . 6694) (t 23064 39115 0 0) nil (5153 . 5154) nil (5141 . 5144) nil ("t" . -5141) (t 23064 38851 0 0) nil (5019 . 5025) nil ("g" . -5019) nil ("r" . -5020) nil ("e" . -5021) nil ("e" . -5022) nil ("n" . -5023) nil (5019 . 5024) nil ("w" . -5019) nil ("h" . -5020) nil ("i" . -5021) nil ("t" . -5022) nil ("e" . -5023) nil (5019 . 5024) nil ("p" . -5019) nil ("i" . -5020) nil ("n" . -5021) nil ("k" . -5022) nil (5019 . 5023) nil ("g" . -5019) nil ("r" . -5020) nil ("e" . -5021) nil ("e" . -5022) nil ("n" . -5023) nil (5019 . 5024) nil ("y" . -5019) nil ("e" . -5020) nil ("l" . -5021) nil ("l" . -5022) nil ("o" . -5023) nil ("w" . -5024) (t 23064 38795 0 0) nil ("-" . -4994) nil ("p" . -4995) nil ("
" . -2410) nil (";; php-modeのみタブを利用しない
;; (add-hook 'php-mode-hook
;;           '(lambda ()
;;             (setq indent-tabs-mode nil)))" . 2411) 2530 (t 23064 38353 0 0) nil (";" . -1055) nil (";" . -1056) nil ("
" . 1041) nil (";;php-mode のgo back とかぶるのでやめる" . 1041) nil ("を" . -1084) nil ("使" . -1085) nil ("う" . -1086) nil ("こ" . -1087) nil ("と" . -1088) nil ("に" . -1089) nil ("す" . -1090) nil ("る" . -1091) nil (1078 . 1079) nil ("は" . -1078) (1078 . 1079) ("ｈ" . -1078) (1078 . 1079) ("の" . -1078) nil ("}" . -15870) nil ("{" . -15871) nil (15870 . 15872) nil ("s" . -15870) nil ("]" . -15871) nil (15871 . 15872) ("]" . -15871) (15870 . 15872) (t 23064 36018 0 0) nil ("]" . -15796) nil (15795 . 15797) ("[" . -15795) (15795 . 15796) nil ("t" . -15795) (t 23064 35643 0 0)))
