;;;;;; ----------------- Function definitions -----------------


;; find current hostname
(defun get-hostname ()
  "Find the hostname we are currently running on"
  (interactive)
  'loopkin)


;; ------------------------------------------------------
;;;CRLF CR problemet - function
(defun dos-unix ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))
(defun unix-dos ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))


;; BUFFER SWITCHING FIX
;;
;; This changes the behaviour of the switch-to-buffer completion functions so
;; that the current buffer is NOT in the completion list.
;;
;; i.e. say you're working in "temp.c", and you want to visit "temp.h"; so you
;; type "C-xb", then "t<TAB>" which then presents you with a completion list of
;; temp.c and temp.h, so you then must type "h<RET>".  This is annoying since 
;; why would you want to switch back to the buffer you're in?!?
;; Using this fix would remove "temp.c" from the completion lits so that when 
;; you had typed "t<TAB>" the name would be completed as "temp.h" as desired.
;;
;; Steve Dodd 
;; March 1998
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun s-minibuffer-complete ()
  "A shell around minibuffer-complete which removes the name of the current buffer from the buffer completion list.  The default behaviour doesn't make sense since there is no reason to ask to switch to the buffer you are already in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
	     (if (consp minibuffer-completion-table)
		 (setq  minibuffer-completion-table 
			(cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete))

(defun s-minibuffer-complete-word ()
  "A shell around minibuffer-complete-word which removes the name of the current buffer from the buffer completion list.  The default behaviour doesn't make sense since there is no reason to ask to switch to the buffer you are already in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
	     (if (consp minibuffer-completion-table)
		 (setq  minibuffer-completion-table 
			(cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete-word)
)

(defun s-minibuffer-complete-and-exit ()
  "A shell around minibuffer-complete-and-exit which removes the name of the current buffer from the buffer completion list.  The default behaviour doesn't make sense since there is no reason to ask to switch to the buffer you are already in!"
  (interactive)
  (if s-remove-first-completion
      (progn (setq s-remove-first-completion nil)
	     (if (consp minibuffer-completion-table)
		 (setq  minibuffer-completion-table 
			(cdr minibuffer-completion-table)) ()))
    ())
  (minibuffer-complete-and-exit))


(defun s-switch-to-buffer ()
  "A shell around switch-to-buffer which removes the name of the current buffer from the buffer completion list.  The default behaviour doesn't make sense since there is no reason to ask to switch to the buffer you are already in!"
  (interactive)
  (setq s-remove-first-completion 't)
  (switch-to-buffer (read-buffer "Switch to buffer: " (other-buffer))))

(setq s-remove-first-completion 'nil)

(define-key minibuffer-local-completion-map "\040" 's-minibuffer-word)
(define-key minibuffer-local-completion-map "\t" 's-minibuffer-complete)
(define-key minibuffer-local-must-match-map [return] 's-minibuffer-complete-and-exit)
(global-set-key "\C-xb" 's-switch-to-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END OF BUFFER SWITCHING FIX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;begin buffer-switching methods, which I bind to Ctrl-TAB and Ctrl-Shift-TAB
;; ----------------------------------------------------------------------
;;     Original yic-buffer.el
;;     From: choo@cs.yale.edu (young-il choo)
;;     Date: 7 Aug 90 23:39:19 GMT
;;
;;     Modified 
;; ----------------------------------------------------------------------

(defun yic-ignore (str)
  (or
   ;;buffers I don't want to switch to 
   (string-match "\\*Buffer List\\*" str)
   (string-match "^TAGS" str)
   (string-match "^\\*Messages\\*$" str)
   (string-match "^\\*Completions\\*$" str)
   (string-match "^ " str)

   ;;Test to see if the window is visible on an existing visible frame.
   ;;Because I can always ALT-TAB to that visible frame, I never want to 
   ;;Ctrl-TAB to that buffer in the current frame.  That would cause 
   ;;a duplicate top-level buffer inside two frames.
   (memq str               
         (mapcar 
          (lambda (x) 
            (buffer-name 
             (window-buffer 
              (frame-selected-window x))))
          (visible-frame-list)))
   ))

(defun yic-next (ls)
  "Switch to next buffer in ls skipping unwanted ones."
  (let* ((ptr ls)
         bf bn go
         )
    (while (and ptr (null go))
      (setq bf (car ptr)  bn (buffer-name bf))
      (if (null (yic-ignore bn))        ;skip over
          (setq go bf)
        (setq ptr (cdr ptr))
        )
      )
    (if go
        (switch-to-buffer go))))

(defun yic-prev-buffer ()
  "Switch to previous buffer in current window."
  (interactive)
  (yic-next (reverse (buffer-list))))

(defun yic-next-buffer ()
  "Switch to the other buffer (2nd in list-buffer) in current window."
  (interactive)
  (bury-buffer (current-buffer))
  (yic-next (buffer-list)))
;;end of yic buffer-switching methods

;;; The following function inserts characters in the same place on a
;;; line over an entire region.  It uses the goal-column if one is set,
;;; otherwise the column in which the mark was set is used.

(defun insert-on-each-line (str beg end)
  "Insert STR at the current column on each line of the current region.
Args BEG and END specify the region if called from a program."
  (interactive "sString to insert: \nr")
  (let ((len (length str)))
    (save-excursion
      (goto-char beg)
      (if goal-column (move-to-column goal-column))
      (while (< (point) end)
        (save-excursion (insert str))
        (setq end (+ end len))
        (line-move 1)))))
;       (next-line-internal 1)))))

(provide 'functions)
