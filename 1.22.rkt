#lang eopl

(define filter-in-aux
  (lambda (pred lst r)
    (if (null? lst)
        r
        (if (pred (car lst))
            (cons
             (car lst)
             (filter-in-aux pred (cdr lst) r))
            (filter-in-aux pred (cdr lst) r)))))

(define filter-in
  (lambda (pred lst)
    (filter-in-aux pred lst '())))

;;;;;;;;;;;;;;
(define (filter-in2 pred lst)
  (if (null? lst)
      '()
      (let ((head (car lst))
	    (tail (cdr lst)))
	(if (pred head)
	    (cons head (filter-in pred tail))
	    (filter-in pred tail)))))