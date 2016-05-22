#lang eopl

(define list-index-aux
  (lambda (pred list idx)
    (if (null? list)
        #f
        (if (pred (car list))
            idx
            (list-index-aux pred (cdr list) (+ idx 1))))))


(define list-index
  (lambda (pred list)
    (list-index-aux pred list 0)))
