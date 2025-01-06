#lang simply-scheme

(define (vowel? letter)
  (not (member? letter '(a e i o u))))

(define (plural wd)
  (if (and (equal? (last wd) 'y) (vowel? (last (bl wd))))
      (word (bl wd) 'ies)
      (word wd 's)))


(plural 'book)
(plural 'computer)
(plural 'elephant)
(plural 'fly)
(plural 'spy)
(plural 'boy)
