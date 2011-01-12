(require 'auto-complete)
;(global-auto-complete-mode t)

(require 'semantic-ia)
;(require 'auto-complete-yasnippet nil t)
(require 'auto-complete-python nil t)
(require 'auto-complete-css nil t) 
(require 'auto-complete-emacs-lisp nil t)  
(require 'auto-complete-semantic nil t)  
(require 'auto-complete-gtags nil t)
  
(global-auto-complete-mode t)
;;                                         ;(set-face-background 'ac-menu-face "lightgray")
;;                                         ;(set-face-underline 'ac-menu-face "darkgray")
;;                                         ;(set-face-background 'ac-selection-face "steelblue")
;;  (define-key ac-complete-mode-map "\t" 'ac-expand)
;; (define-key ac-complete-mode-map "\r" 'ac-complete)
;; (define-key ac-complete-mode-map "\M-n" 'ac-next)
;; (define-key ac-complete-mode-map "\M-p" 'ac-previous)
(setq ac-auto-start t)
(setq ac-dwim t)
  
 (set-default 'ac-sources 
              '(ac-source-semantic 
                ;ac-source-yasnippet 
                ac-source-abbrev 
                ac-source-words-in-buffer 
                ac-source-files-in-current-dir 
                ac-source-symbols
                ac-source-filename))

 (setq ac-modes
       '(emacs-lisp-mode lisp-interaction-mode lisp-mode
                         c-mode java-mode php-mode ruby-mode
                         css-mode sh-mode nxml-mode makefile-mode
                         sql-mode cperl-mode))

(provide 'complete)
