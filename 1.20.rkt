#lang eopl

(define count-occurrences-elem
  (lambda (s elem)
    (if (symbol? elem)
        (if (eqv? s elem) 1 0)
        (count-occurrences s elem))))


(define count-occurrences
  (lambda (s slist)
    (if (null? slist)
        0
        (+ (count-occurrences-elem s (car slist))
           (count-occurrences s (cdr slist))))))

(count-occurrences 'x '((f x) y (((x z) x))))
(count-occurrences 'x '((f x) y (((x z) () x))))
(count-occurrences 'w '((f x) y (((x z) x))))