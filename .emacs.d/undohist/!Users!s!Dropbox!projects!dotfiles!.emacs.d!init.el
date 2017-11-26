
((digest . "10c5ca281fd3f63a3ec01712f02acad9") (undo-list nil (";" . -2837) nil (";" . -2838) nil (2837 . 2839) nil (2810 . 2812) nil (2760 . 2762) nil (2703 . 2705) (t 23066 56338 0 0) nil (nil rear-nonsticky nil 2849 . 2850) (nil fontified nil 2844 . 2850) (2844 . 2850) nil ("g" . -2844) nil ("n" . -2845) nil ("o" . -2846) nil ("m" . -2847) nil ("e" . -2848) nil ("2" . -2849) nil (2850 . 2852) nil (nil rear-nonsticky nil 2849 . 2850) (nil fontified nil 2844 . 2850) (2844 . 2850) nil (2843 . 2844) (" " . -2843) (2843 . 2844) ("'" . -2843) (2842 . 2844) nil (2832 . 2842) ("load-the" . -2832) nil (2831 . 2840) ("(" . -2831) (2831 . 2833) ("(" . -2831) (2831 . 2832) nil (2830 . 2831) nil (2830 . 2831) (t 23066 55124 0 0) nil ("
" . -7527) ((marker . 2850) . -1) nil (";; 編集履歴を記憶する──undohist
;; undohistの設定
(when (require 'undohist nil t)
  (undohist-initialize))
" . 7528) ((marker . 2296) . -38) ((marker . 2296) . -38) ((marker . 2273) . -23) ((marker . 2273) . -23) ((marker . 2297) . -70) ((marker . 2297) . -70) ((marker . 2309) . -95) ((marker . 2309) . -95) ((marker) . -95) 7623 nil ("
" . -7468) ((marker . 2837) . -1) ((marker . 2837) . -1) ((marker . 2850) . -1) nil (";; moccurの結果を直接編集──moccur-edit
;; moccur-editの設定
(require 'moccur-edit nil t)

;; moccur-edit-finish-editと同時にファイルを保存する
;; (defadvice moccur-edit-change-file
;;   (after save-after-moccur-edit-buffer activate)
;;   (save-buffer))
" . 7469) ((marker . 2296) . -209) ((marker . 2296) . -209) ((marker . 2273) . -157) ((marker . 2273) . -157) ((marker . 2297) . -229) ((marker . 2297) . -229) ((marker . 2259) . -79) ((marker . 2259) . -79) ((marker . 2258) . -78) ((marker . 2258) . -78) ((marker . 2227) . -49) ((marker . 2227) . -49) ((marker . 2204) . -31) ((marker . 2204) . -31) ((marker) . -229) 7698 (t 23064 62669 0 0) nil undo-tree-canary))
