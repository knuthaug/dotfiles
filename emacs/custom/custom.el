;; -*- mode: Emacs-Lisp -*-

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-buffer-indent 4)
 '(default-input-method "latin-1-prefix")
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(nxml-bind-meta-tab-to-complete-flag t)
 '(nxml-slash-auto-complete-flag t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(weblogger-config-alist
   (quote
    (("default" "http://knuthaugen.no/mt/mt-xmlrpc.cgi" "knuthaug" "" "1")))))

(provide 'custom)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Courier 10 Pitch")))))
