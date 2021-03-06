(autoload 'yaml-mode "yaml-mode" "" t)
(autoload 'ruby-mode "ruby-mode" "" t)
(autoload 'rhtml-mode "rhtml-mode" "" t)

(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

(add-hook 'ruby-mode-hook
          (lambda()
            (add-hook 'local-write-file-hooks
                      '(lambda()
                         (save-excursion
                           (untabify (point-min) (point-max))
                           (delete-trailing-whitespace)
                           )))
            (set (make-local-variable 'indent-tabs-mode) 'nil)
            (set (make-local-variable 'tab-width) 2)
                                        ;            (imenu-add-to-menubar "IMENU")
            (local-unset-key "TAB")
            ;(define-key ruby-mode-map "TAB" 'yas/expand)
            (define-key ruby-mode-map "\C-m" 'newline-and-indent) ;Not sure if this line is 100% right but it works!
            (require 'ruby-electric)
            (ruby-electric-mode t)
            ))

;(add-hook 'ruby-mode-hook
;          '(lambda ()
;             (make-variable-buffer-local 'yas/trigger-key)
;             (setq yas/trigger-key [tab])))


(provide 'ruby)
