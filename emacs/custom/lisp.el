(setq inferior-lisp-program "/usr/bin/sbcl")
;(require 'slime-autoloads)
(setq slime-net-coding-system 'utf-8-unix)

(add-hook 'lisp-mode-hook
           (lambda ()
             (cond ((not (featurep 'slime))
                    (require 'slime) 
                    (normal-mode)))))

(setq auto-mode-alist
      (append '(("\.lisp$" . lisp-mode)
                ("\.lsp$" . lisp-mode)
                ("\.cl$" . lisp-mode)
                ("\.asd$" . lisp-mode)
                ("\.system$" . lisp-mode)) auto-mode-alist))

;(define-key slime-mode-map [C-tab] 'slime-indent-and-complete-symbol)
;(define-key slime-mode-map [f1] 'slime-hyperspec-lookup)
;(define-key slime-repl-mode-map [f1] 'slime-hyperspec-lookup)
;(define-key slime-mode-map [f8] 'slime-eval-buffer)
;(define-key slime-mode-map [f9] 'slime-eval-last-expression-display-output)
;(define-key slime-mode-map [f11] (lambda () (interactive) (insert "(")))
;(define-key slime-mode-map [f12] (lambda () (interactive) (insert ")")))
;(define-key slime-mode-map [C-return] 'slime-close-all-sexp)

;(slime-setup :autodoc t)


(provide 'lisp)
