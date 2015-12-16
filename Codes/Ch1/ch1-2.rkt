#lang planet neil/sicp

;some advanced grammer

(define (abs x)
  (cond ((> x 0) x) ; 
        ((= x 0) 0)
        ((< x 0) (- x)
                 )))
(abs 5)
(abs -4)
(abs 0)

(define (abss x)
  (cond ((< x 0) (- x))
        (else x))) ;the defination method for "else"

(abss -4.31)

(define (absif x)
  (if (< x 0) (- x) x) ;for "if"
  )

(absif 4.2)
(absif -1)

(define (>= x y)
  (or (> x y) (= x y)))
(define (>== x y)
  (not (< x y)))



