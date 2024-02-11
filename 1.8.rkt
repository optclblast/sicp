#lang racket 

(define (newton-qroot guess guess-prev x)
          (if (good-enough? guess guess-prev)
          guess
          (newton-qroot (improve guess x) guess x)))

(define (good-enough? guess guess-prev)
          (< (abs (- guess guess-prev)) 0.001))

(define (average x y)
          (/ (+ x y) 3))

(define (improve guess x)
          (average guess (/ x guess)))


(define (qroot-new x)
          (if (= x 0) x (newton-qroot 1.0 999 x)))

(qroot-new 56)