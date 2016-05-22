#lang eopl


(define down
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (list (car lst))
              (down (cdr lst))))))

(define down2
  (lambda (lst)
    (map list lst)))

;(list 1 '(1 2))
;(cons 1 '(1 2))