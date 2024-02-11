#lang racket


(define x 10)
(define y 8)
(define z 23)

(define (sqr x) (* x x))
(define (sum-of-sqrs x y) (+ (sqr x) (sqr y)))

(define (is-first-smallest? x y z)(
          and (< x y) (< x z)
))

(define (solution x y z) (
          cond     ((is-first-smallest? x y z)(sum-of-sqrs y z))
                    ((is-first-smallest? y x z)(sum-of-sqrs x z))
                    ((is-first-smallest? z y x)(sum-of-sqrs y x))
          
))

(solution x y z)