#lang planet neil/sicp
(* 1 2.0 3)
(+ (* 2 3) (- 10 6 1)) ;这TM是注释你敢信？

(+ 5 3
   (- 4 2 (* 7 2)
      (/ 3.0 5 )
      )
   );要我说，我很难理解这种所谓的“美观打印”。。。
(define size 2);命名方式也很奇怪。。。
(* 5 size)
(define area (* size size))
area

(define (square x) (* x x))
(square 5) ;过程定义，也是一种抽象

(define (sos x y) (+ (square x) (square y)))
(sos 3 4)
(define (f a)
  (sos (+ a 1) (* a 2))) ; 一组较为复杂的过程定义——复合过程
(f 5)



