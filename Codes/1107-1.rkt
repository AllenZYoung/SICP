#lang planet neil/sicp
(* 1 2.0 3)
(+ (* 2 3) (- 10 6 1)) ;the comments grammer is so odd...

(+ 5 3
   (- 4 2 (* 7 2)
      (/ 3.0 5 )
      )
   );it's suggested to coding in this "style".
(define size 2);which means "size = 2"
(* 5 size)
(define area (* size size))
area

(define (square x) (* x x))
(square 5) ;define a process, in my view, a function.

(define (sos x y) (+ (square x) (square y)))
(sos 3 4)
(define (f a)
  (sos (+ a 1) (* a 2))) ; Complex process.
(f 5)



