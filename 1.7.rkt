#lang racket

(define (sqrt-iter guess guess-prev x)
          (if (good-enough? guess guess-prev)
          guess
          (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess guess-prev)
          (< (abs (- guess guess-prev)) 0.001))

(define (average x y)
          (/ (+ x y) 2))

(define (improve guess x)
          (average guess (/ x guess)))

(define (sqrt-new x)
          (if (= x 0) x (sqrt-iter 1.0 999 x)))

(sqrt-new 14566)
(sqrt-new 1.0004234)
(sqrt-new 1)
(sqrt-new 464564)
(sqrt-new 0)
(sqrt-new 56)