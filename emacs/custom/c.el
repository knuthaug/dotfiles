(add-hook 'c-mode-hook 
          '(lambda ()
             (c-set-style "gnu")
             (setq c-basic-offset 4)
             )
          )

(provide 'c)
