;; -*- mode: Emacs-Lisp -*-

;; peders uptime-hack og wwtime  
(setq
 wwtime-display (list "CET" "GMT" "EST"))

;; ---------- flyspell
(setq minor-mode-alist
      (cons '(flyspell-mode (" Fly[" ispell-dictionary "]")) minor-mode-alist))

;;; misc.el --- Stuff that don't fit anywhere else goes here
 
;; Want to use this in many modes.
(require 'flymake)
 
;; Custom file.
(setq custom-file "~/.emacs.d/custom/custom.el")
(load custom-file)
 
;; Default spelling dictionary.
(setq ispell-dictionary "english")
 
;; Add flyspell to modes.
(add-hook 'ruby-mode-hook 'flyspell-prog-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'java-mode-hook 'flyspell-prog-mode)
(add-hook 'espresso-mode-hook 'flyspell-prog-mode)
(add-hook 'magit-log-edit-mode-hook 'flyspell-mode)
(add-hook 'yaml-mode-hook 'flyspell-mode)
 
;; Hide menubar.
(menu-bar-mode 1)
 
;; Hide toolbar.
(tool-bar-mode nil)
 
;; Hide scrollbar.
(scroll-bar-mode -1)

(setq initial-major-mode 'text-mode )
(show-paren-mode t)         ; parenthesis
(line-number-mode t)		; want linenumbers
(column-number-mode t)		; columnnumbers are nice too
(transient-mark-mode t)		; keep highligt, deactivate mark on change
(icomplete-mode)		; show incremental completions in minibuffer
;(resize-minibuffer-mode t)	; resize minibuffer to fit contents
(pc-selection-mode)
(global-font-lock-mode t)			; fontify when possible
(setq minibuffer-max-depth nil)
(setq visible-bell t)

 
;; Show information in minibuffer instead of as a tooltip.
(tooltip-mode nil)
 
;; kill-line will kill whole line (including empty line).
(setq kill-whole-line t)
 
;; Skip startup message.
(setq inhibit-startup-message t)
 
;; Title will show active buffer.
(setq frame-title-format "Emacs - '%b'")
 
;; Yellow cursor.
(set-cursor-color "#FFFF00")
 
;; White mouse pointer.
(set-mouse-color "purple")
 
;; So that you only have to type y / n instead of yes / no.
(fset 'yes-or-no-p 'y-or-n-p)
 
;; Easy buffer switching by holding down shift and press any arrow key.
(windmove-default-keybindings 'shift)
 
;; Show unfinished keystrokes early.
(setq echo-keystrokes 0.1)
 
;; Maximum decoration
(setq font-lock-maximum-decoration t)
 
;; No ECB tip of the day.
(setq ecb-tip-of-the-day nil)
 
;; Use firefox as default browser.
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "/usr/bin/firefox")
 
;; Enable narrowing.
(put 'narrow-to-region 'disabled nil)
 
;; Highlight matching parenthesis.
(show-paren-mode 1)
 
;; Show empty lines at end of buffer.
(set-default 'indicate-empty-lines t)
 
;; For it's awesome rectangle mode.
(setq cua-enable-cua-keys nil)
(setq cua-toggle-set-mark nil)
(cua-mode)
 
;; Show line numbers.
;(require 'linum)
 
;; Git interaction.
;(require 'magit)
 
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))
 
;; Don't insert twice when no region is selected.
(setq wrap-region-insert-twice nil)
 
;; Run after wraping a region.
(add-hook 'wrap-region-after-hook
          '(lambda ()
             (indent-region wrap-region-beginning wrap-region-end)))
 
;; Snippets.
(require 'dropdown-list)
(require 'yasnippet)
;(setq yas/trigger-key (kbd "f1"))
(yas/load-directory "~/.emacs.d/packages/yasnippet/snippets")
(yas/initialize)
 
(load-file "~/.emacs.d/packages/cedet/common/cedet.el")

;; Emacs Code Browser.
(require 'ecb-autoloads)
 
;; Easy building of regular expressions.
(require 're-builder)
 
;; Colorize parenthesis.
;(require 'parenface)
 
;; Indentation level by default is 2.
(setq-default c-basic-offset 2)
 
;; Display time and date in mode-line.
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
 
;; Use keats to handle keyboard shortcuts.
;(setq keats-file "~/dev/emacs/keats")
;(require 'keats)
;(require 'keats-interactive)
;(keats-mode t)

;;;;; Standard behaviour stuff ;;;;;

(setq
 gc-cons-threshold		1000000 ; don't garbagecollect too often
 inhibit-startup-message	t	; don't display startup screen
 next-line-add-newlines		nil	; prevent blank lines at end of file
 require-final-newline		t	; we want newlines at end of file
 kill-whole-line		    t	; kill whole lines in one go
 mouse-yank-at-point		t	; always yank at point
; delete-auto-save-file      t
 backup-by-copying-when-linked 	t	; make sure links point to newest file
 sentence-end-double-space	nil	; no double space to end sentences
 completion-ignore-case		t	; don't consider case in completions
 search-highlight		    t	; higlight search match
 query-replace-highlight	t	; higlight during query-replace
 auto-save-list-file-prefix	nil	; don't want .saves-* files
 )


;; make me a server
(server-start)
 

;; delete-trailing-whitespace is to long.
(defalias 'dtw 'delete-trailing-whitespace)
 
;; Remember window configuration.
(winner-mode 1)
 
;; Add parts of each file's directory to the buffer name if not
;; unique.
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
 
;; Minimal finge.
(fringe-mode 'minimal)
 
;; Auto complete settings.
;; (require 'auto-complete)
;; (global-auto-complete-mode t)
;; (global-set-key (kbd "M-/") 'ac-start)
;; (define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
;; (define-key ac-complete-mode-map (kbd "n") 'ac-next)
;; (define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)
;; (define-key ac-complete-mode-map (kbd "p") 'ac-previous)
;; (define-key ac-complete-mode-map (kbd "C-g") 'ac-stop)
;; (setq ac-auto-start nil)
;; (setq-default ac-sources '(ac-source-words-in-all-buffer))
 
;; Save place in files.
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)
 
;; Allow up and down case of region.
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;diverse saker
;;; Set frame size and position
(setq search-highlight t
	  query-replace-highlight t   
	  undo-limit 8000   
      visible-bell t
;	  display-time-24hr-format t
;	  display-time-day-and-date t
	  )

;;; Calendar
(setq calendar-latitude 60.0
      calendar-longitude 10.7
      calendar-location-name "Oslo"
      calendar-week-start-day 1
)



;;;;;;;; tabbing og fill
(setq-default 
 indent-tabs-mode nil
 indent-level 4
 c-basic-offset 4
 tab-width 4
 default-tab-width 4
 fill-column 70 
 explicit-shell-file-name "/bin/bash")
 
;; Associate modes with file extensions.
(setq auto-mode-alist
      (append
       '(("\\.C$"      . c-mode)
         ("\\.H$"      . c-mode)
         ("\\.cc$"     . c-mode)
         ("\\.hh$"     . c-mode)
         ("\\.c$"      . c-mode)
         ("\\.h$"      . c-mode)
         ("\\.java$"   . java-mode)
         ("\\.m$"      . objc-mode)
         ("\\.php$"    . php-mode)
         ("\\gnus$"   . emacs-lisp-mode)
         ("\\emacs$"   . emacs-lisp-mode)
         ("\\.sgml$"   . sgml-mode)
         ("\\.xml$"    . nxml-mode)
         ("\\.xsd$"    . nxml-mode)
         ("\\.html$"    . nxml-mode)
         ("\\.xsl$"    . nxml-mode)
         ("\\.pl$"     . cperl-mode)
         ("\\.pm$"     . cperl-mode)
         ("\\.cgi$"    . cperl-mode)
         ("\\.t$"    . cperl-mode)
         ("\\.dcl$"    . dtd-mode)
         ("\\.dec$"    . dtd-mode)
         ("\\.dtd$"    . dtd-mode)
         ("\\.ele$"    . dtd-mode)
         ("\\.ent$"    . dtd-mode)
         ("\\.mod$"    . dtd-mode)
         ("\\.css$"    . css-mode)
         ("\\.rb$"     . ruby-mode)
         ("Rakefile"   . ruby-mode)
         ("\\TODO.$"   . todo-mode)
         ("\\.haml$"   . haml-mode)
         ("\\.feature$"   . feature-mode)
         
         ) auto-mode-alist)
      )
 
(provide 'misc)

