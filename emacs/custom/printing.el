;;;;; setup for printing ;;;;;

(setq
 ps-print-color-p		        nil	; still want BW listings
 ps-lpr-command			        "lpr"	; command for printing
 ps-lpr-switches		        nil	; ... and options
 ps-paper-type			        'a4	; the only true paper format
 ps-line-number			        nil	; we don't want linenumbers
 ps-print-control-characters	'control-8-bit ; want 8-bit charachters
 ps-print-header		        nil	; print headers
 ps-spool-duplex		        t	; we do have duplex printers
 ps-auto-font-detect		    t	; italic, bold, and underline from face
 ps-bold-faces '(			; faces that should print bold
		 font-lock-keyword-face
		 )
 ps-italic-faces '(			; faces that should print italic
		   font-lock-string-face
		   )
 ps-underlined-faces		nil	; faces that should print underlined
 )

(provide 'printing)
