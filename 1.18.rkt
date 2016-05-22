#lang eopl

(define swapper-elem
  (lambda (s1 s2 elem)
    (if (symbol? elem)
        (cond
          ((eqv? elem s1) s2)
          ((eqv? elem s2) s1)
          (else elem))
        (swapper s1 s2 elem))))


(define swapper
  (lambda (s1 s2 slist)
    (if (null? slist)
        '()
        (cons
         (swapper-elem s1 s2 (car slist))
         (swapper s1 s2 (cdr slist))))))
      