#lang racket 

(define (A x y)
        (cond ((= y 0) 0)
                ((= x 0) (* y 2))
                ((= y 1) 2)
                (else (A (- x 1)
                        (A x (- y 1))))
        )
)

;; 1024
(println (A 1 10))

;; 65536
(println (A 2 4))

;; 65536
(println (A 3 3))

;; 2n
(define (f n) (A 0 n))

;; 2^n
(define (g n) (A 1 n))

;; 2^(2^(2^... times))
(define (h n) (A 2 n))

;; 5n^2
(define (k n) (* 5 n n))

(println (k 4))