;;; hippie-expand  Strictly speaking no mode either;;;
(setq
 hippie-expand-try-functions-list '(try-expand-all-abbrevs
   try-expand-dabbrev
   try-complete-file-name-partially
   try-complete-file-name
   try-expand-list
   try-expand-line
   try-expand-dabbrev-all-buffers
   try-expand-dabbrev-from-kill
   try-complete-lisp-symbol-partially
   try-complete-lisp-symbol
   ))

(provide 'hippie)
