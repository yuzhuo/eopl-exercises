#lang eopl

(define product-aux
  (lambda (elem sos)
    (if (null? sos)
        '()
        (cons
         (list elem (car sos))
         (product-aux elem (cdr sos))))))

(define product
  (lambda (sos1 sos2)
    (if (null? sos1)
        '()
        (cons
         (product-aux (car sos1) sos2)
         (product (cdr sos1) sos2)))))
aa

(define product-aux2
  (lambda (fn elem sos)
    (map fn elem sos)))

     