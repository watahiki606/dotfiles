
((digest . "e12c93677ad16f1e85fc8dbbad4ee114") (undo-list nil ("

;; perl-completion
(add-hook 'cperl-mode-hook
          (lambda()
            (require 'perl-completion)
            (perl-completion-mode t)))

(add-hook  'cperl-mode-hook
           (lambda ()
             (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
               (auto-complete-mode t)
               (make-variable-buffer-local 'ac-sources)
               (setq ac-sources
                     '(ac-source-perl-completion)))))


" . -11041) ((marker . 11041) . -2) ((marker . 11041) . -2) ((marker . 11041) . -2) ((marker) . -197) ((marker) . -197) ((marker) . -48) ((marker) . -48) ((marker) . -483) ((marker) . -483) ((marker) . -482) ((marker) . -482) ((marker) . -302) ((marker) . -302) ((marker) . -21) ((marker) . -21) ((marker . 11041) . -2) ((marker) . -481) ((marker) . -482) ((marker) . -340) ((marker) . -340) ((marker) . -396) ((marker) . -396) ((marker) . -428) ((marker) . -428) ((marker) . -68) ((marker) . -68) ((marker) . -107) ((marker) . -107) ((marker) . -146) ((marker) . -146) ((marker) . -147) ((marker) . -147) ((marker) . -175) ((marker) . -175) ((marker) . -1) ((marker) . -1) ((marker) . -2) ((marker) . -2) ((marker) . -484) nil (6836 . 6837) nil ("x" . -11286) nil ("e" . -11287) nil (11286 . 11288) (t 22315 6581 354142 455000) nil (11039 . 11041) nil (nil rear-nonsticky nil 11519 . 11520) (nil fontified nil 11040 . 11520) (11040 . 11520) (t 22315 6069 344962 486000) nil undo-tree-canary))
