;;;(autoload 'nxml-mode)

(fset 'html-mode 'nxml-mode)
(fset 'xml-mode 'nxml-mode)

(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files "~/schemas.xml"))

(require 'whattf-dt)

(provide 'xml)
