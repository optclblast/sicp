#lang racket

(define numerator (
     + 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))    
))

(define denom (
          * 3 (- 6 2) (- 2 7)
))

(/ numerator denom)
