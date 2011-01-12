(setq
 font-lock-maximum-decoration t			; fontify to the max
 font-lock-verbose (* 50 1024)			; big buffers have messages
 font-lock-maximum-size (* 100 1024)		; fontify everything if <100K
; font-lock-support-mode 'lazy-lock-mode		; to fontify large buffers
 )


(setq
 lazy-lock-minimum-size font-lock-maximum-size	; when to use lazy-lock
 lazy-lock-stealth-time 30			; idletime before stealth
 )

(set-face-background 'region "DimGray")		; darker bg for region

(setq
 show-paren-ring-bell-on-mismatch nil		; noise is bad
 show-paren-style 'mixed
 )

(provide 'fonts)
