;;; shell-pop
;; (package-install 'shell-pop)

(custom-set-variables
 '(shell-pop-universal-key (kbd "C-t"))
 '(shell-pop-shell-type '("ansi-term" "*ansi-term*" (lambda () (ansi-term shell-pop-term-shell))))
 '(shell-pop-term-shell (substring (shell-command-to-string "which zsh") 0 -1)))