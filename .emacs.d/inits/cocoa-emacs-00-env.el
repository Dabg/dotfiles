;;; environment variables
(eval-when-compile (require 'cl))
;; set environment variable `PATH' from zsh configuration
(setenv "PATH" (mapconcat 'identity (list "~/local/bin" "/usr/local/bin" (getenv "PATH")) ":"))
(setenv "PATH" (substring (shell-command-to-string "$(which zsh) -ic 'echo $PATH' 2> /dev/null") 0 -1))
;; add PATH to 'exec-path
(loop for path in (reverse (parse-colon-path (getenv "PATH")))
      do (add-to-list 'exec-path path))
