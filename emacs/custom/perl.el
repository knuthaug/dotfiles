;;; cperl-mode ;;;
(autoload 'cperl-mode "cperl-mode" "Alternative perl mode" t)
(setq
 cperl-exxtra-newline-before-brace       nil     ; brace on same line as test
 cperl-indent-level                     4       ; the only true value
 cperl-lineup-step                      1       ; what it should be
 cperl-auto-newline                     nil     ; don't want that
 cperl-tab-always-indent                t       ; only sane choice
 cperl-font-lock                        t       ; colors is nice
 cperl-electric-lbrace-space            nil     ; space after ${, mo
 cperl-electric-parens                  t       ; auto parens
 cperl-electric-parens-mark             t       ; autoparens use selection/mark
 cperl-electric-linefeed                t       ; smart linefeeds
 cperl-electric-keywords                t       ; auto keywords
 cperl-info-on-command-no-prompt        t       ; cool
 cperl-clobber-lisp-bindings            t       ; C-h f is perl
 cperl-electric-keywords                t       ; auto keywords
 cperl-info-on-command-no-prompt        t       ; cool
 cperl-clobber-lisp-bindings            t       ; C-h f is perl
 cperl-lazy-help-time                   5       ; show help after 5 secs
 cperl-invalid-face                     'nil    ; dont hilight trailspace
 cperl-indent-left-aligned-comments     t       ; indent comments too
 cperl-under-as-char                    t       ; _ is a word char
 cperl-break-one-line-blocks-when-indent t      ; 1-to-multi
 cperl-fix-hanging-brace-when-indent    t       ; } on a line by it self
 cperl-merge-trailing-else              t       ; } and else on same line
 )


(provide 'perl)
