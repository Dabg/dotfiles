;; サイズ
(setq initial-frame-alist
      (append (list
	       '(width  . 200)
	       '(height . 150)) initial-frame-alist))
;; 色と透過
(set-background-color "Black")
(set-foreground-color "White")
(add-to-list 'default-frame-alist '(alpha . 85))
;; スクロールバーを非表示
(set-scroll-bar-mode nil)
;; 折り返ししない
(setq default-truncate-lines t)