#lang racket

(define upper 100)
(define lower 1)

(define (guess)
  (quotient (+ lower upper) 2))

(define (smaller)
  (set! upper
        (max lower
             (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower
        (min upper
             (add1 (guess))))
  (guess))

(define (start a b)
  (set! lower (min a b))
  (set! upper (max a b))
  (guess))
