#lang eopl
(define remove
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? s (car los))
            (remove s (cdr los))
            (cons (car s) (remove s (cdr s)))))))

(define substl
  (lambda (old new slist)
    (if (null? slist)
        '()
        (map
         (lambda (sexp)
           (if (symbol? sexp)
               (if (eqv? old sexp)
                   new
                   sexp)
               (substl old new slist)))
         slist))))
                
                