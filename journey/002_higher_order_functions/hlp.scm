
(define (sum-of-integers a b)
  (if (> a b)
      0
      (+
       a
       (sum-of-integers (+ a 1) b))))

(define (cube x) (* x x x))

(define (sum-of-cubes a b)
  (if (> a b)
      0
      (+
       (cube a)
       (sum-of-cubes (+ a 1) b))))

(define (sum term next a b)
  (if (> a b)
      0
      (+
       (term a)
       (sum term next (next a) b))))

(define (sum-of-integers-term a)a)

(define (sum-of-integers-next a) (+ a 1))

(define (sum-of-integers-hlf a b)
  (sum sum-of-integers-term sum-of-integers-next a b))
