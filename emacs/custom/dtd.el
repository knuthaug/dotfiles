   ;; dtd-mode
   ;; Start DTD mode for editing SGML-DTDs
(autoload 'dtd-mode "tdtd" "Major mode for SGML and XML DTDs.")
(autoload 'dtd-etags "tdtd"
  "Execute etags on FILESPEC and match on DTD-specific regular expressions." t)
(autoload 'dtd-grep "tdtd" "Grep for PATTERN in files matching FILESPEC." t)
   
   ;; Turn on font lock when in DTD mode
(add-hook 'dtd-mode-hooks
          'turn-on-font-lock)


(provide 'dtd)
