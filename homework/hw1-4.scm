#lang simply-scheme

(define (ordered? num-list)
  (cond ((empty? (bf num-list)) #t)
        ((> (first num-list) (first (bf num-list))) #f)
        (else (ordered? (bf num-list)))))


(ordered? '(1 2 3 4 5))
(ordered? '(1 2 6 4 5))