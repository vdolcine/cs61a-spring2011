#lang simply-scheme

(define (squares nums)
  (define (square x) (* x x))
  (if (empty? nums)
      '()
      (se (square (first nums))
          (squares (bf nums)))))


(squares '(2 3 4 5))
(squares '(2 4 16 256))