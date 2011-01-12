;;;;;; .---------------- Key bindings --------------------

;; ------------------------------------------------------
;;Keyboard changes, hopefully to the better
(global-set-key [prior]	'scroll-down)
(global-set-key [next]	'scroll-up)
(global-set-key [home]	'beginning-of-line)
(global-set-key [end]	'end-of-line)
(global-set-key [insert]	'overwrite-mode)
(global-set-key [C-prior]	'beginning-of-buffer)
(global-set-key [C-next]	'end-of-buffer)
(global-set-key [C-left]	'backward-word)
(global-set-key [C-right]	'forward-word)
(global-set-key [M-left]	'backward-paragraph)
(global-set-key [M-right]	'forward-paragraph)
(global-set-key "\C-ck"   'compile)
;(global-set-key [delete] 'delete-char)
;(global-set-key [backspace] 'delete-backward-char)
(global-set-key "\ei"    'insert-on-each-line)

;; --- Nice mouse wheel scrolling
(global-set-key [mouse-4] 'scroll-down)
(global-set-key [mouse-5] 'scroll-up)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

; Set C-g to goto-line, er samme som quit minibuffer men funker
(global-set-key [f1]    'help)
(global-set-key [f2]    'kill-buffer)
(global-set-key [f3]    'goto-line)
;; This binds word completions to Shift-Tab, and Ctrl+Space
;(global-set-key [S-iso-lefttab] 'dabbrev-completion)
;(global-unset-key "\M-c")
;(global-set-key [C-\040] 'hippie-expand)
(global-set-key [C-up] 'yic-next-buffer) ;forward reference
(global-set-key [C-down] 'yic-prev-buffer) ;forward reference
;(global-set-key [C-tab] 'hippie-expand)
(global-set-key [M-/] 'hippie-expand)
(global-set-key [f4] 'toggle-read-only)


;(define-key global-map "C-\t" 'hippie-expand)

(provide 'bindings)
