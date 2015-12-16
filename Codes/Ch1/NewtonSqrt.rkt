#lang planet neil/sicp

;Calculate the square root by Newton method.
(define (square x) (* x x))
(define (abs x)
  (cond ((> x 0) x) 
        ((= x 0) 0)
        ((< x 0) (- x)
                 )))
(define (average a b)
  (/ (+ a b) 2))
;All above is math tools
(define (sqrt-iter guess x) ;The particular defination of the process
  (if (good-enough? guess x) ;"guess" is a value of guessing
      guess
      (sqrt-iter (improve guess x) x))
  )
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x) (sqrt-iter 1.0 x)) ;set 1 as initial guess value

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (sqrt 4))


(define (sqrts x) 
  (define (good-enough? guess)
  (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
  (average guess (/ x guess)))
  (define (sqrt-iter guess) 
  (if (good-enough? guess) 
      guess
      (sqrt-iter (improve guess)))
  )
  (sqrt-iter 1.0))

(sqrts 16)

  
  
