#lang simply-scheme

(define (dupls-removed sent)
  (cond ((empty? sent) '())
	((member? (first sent) (bf sent))
	 (dupls-removed (bf sent)))
	(else (sentence (first sent) (dupls-removed (bf sent))))))


(dupls-removed '(a b c a e d e b))
(dupls-removed '(a b c))
(dupls-removed '(a a a a b a a))