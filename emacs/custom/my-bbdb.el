;; BBDB not a mode, but still here
(require 'bbdb)
(bbdb-initialize 'gnus )
(setq bbdb-electric-p nil)
(setq bbdb-quiet-about-name-mismatches t)
(setq bbdb-north-american-phone-numbers-p nil)
(setq bbdb-send-mail-style 'message)
;; customization

(setq 
 bbdb-use-pop-up t)


(provide 'my-bbdb)
