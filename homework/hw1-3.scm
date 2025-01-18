#lang simply-scheme

(define (replace wd)
  (cond ((or (equal? wd 'I) (equal? wd 'me)) 'you)
        ((equal? wd 'You) 'I)
        ((equal? wd 'you) 'me)
        (else wd)))

(define (switch s)
  (if (empty? s)
      '()
      (sentence (replace (first s))
          (switch (bf s)))))
        

 (switch '(You told me that I should wake you up))