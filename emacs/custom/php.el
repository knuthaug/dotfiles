(add-hook 'php-mode-hook
          (lambda ()
            (setq ac-sources '(ac-source-abbrev ac-source-words-in-buffer ac-source-files-in-current-dir ac-source-symbols))))


(provide 'php)
