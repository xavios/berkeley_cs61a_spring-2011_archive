(define (downup1 wd)
  (se wd))

(define (downup2 wd)
  (se wd (first wd) wd))

(define (downup3 wd)
  (sentence wd
	    (downup2 (bl wd))
   wd))

(define (downup4 wd)
  (se wd (downup3 (bl wd)) wd))


(define (downup wd)
  (if(= (count wd) 1)
   	(se wd)
   	(se wd (downup (bl wd)) wd)
   )
)
