#lang racket

(define (multiple? multiple value)
  (not (= (modulo value multiple) 0)))

(define (filter-multiples-of multiple candidates)
  (filter
   (curry multiple? multiple)
   candidates))

(define (sieve-recursive candidates confirmed-primes)
  (cond
    [(empty? candidates) confirmed-primes]
    [else (sieve-recursive
           (filter-multiples-of (car candidates) (cdr candidates))
           (cons (car candidates) confirmed-primes))]))

(define (find-primes-upto limit)
  (reverse (sieve-recursive
    (range 2 (+ 1 limit))
    '())))

(find-primes-upto 10000)