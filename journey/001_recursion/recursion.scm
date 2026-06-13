;; TODO
(define (count-ums sent)
  (if (equal? 'um (first sent))
      1
      (+ (count-ums (butfirst sent)))))

(define (abs x)
  (cond
   ((> x 0) x)
   ((= x 0) 0)
   ((< x 0) (- x))))

; Define a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.

(define (sum-of-two-largest a b c)
  (cond
   ((and (> a c) (> b c)) (+ a b))
   ((and (> b a) (> c a)) (+ b c))
   ((and (> a b) (> c b)) (+ a c))))
