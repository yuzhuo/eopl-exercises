#lang eopl

(define invert-aux
  (lambda (l)
    (list (cadr l)
          (car l))))

(define invert
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (invert-aux (car lst))
              (invert (cdr lst))))))


(invert '((a 1) (b 2) (c 3) (d 4)))