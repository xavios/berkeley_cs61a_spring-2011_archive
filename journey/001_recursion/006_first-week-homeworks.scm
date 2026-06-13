(define (square x)
  (* x x))

(define (squares sent)
  (if (= (count sent) 0)
      '()
      (sentence (squares (butlast sent)) (square (last sent)))))

;; I, me --> you
;; you --> me

(define (change wd)
  (cond ((equal? wd 'you) 'me)
	((or (equal? wd 'I) (equal? wd 'me)) 'you)
	(else wd)))

(define (switch-iter sent)
  (if (= (count sent) 0)
      '()
       (sentence (switch-iter (butlast sent)) (change (last sent)))))

(define (switch sent)
  (if (equal? (first sent) 'you)
      (sentence 'I (switch-iter (butfirst sent)))
      (switch-iter sent)))

;; wether a sentence of numbers is ordered in an ascending manner
(define (ordered? numbers)
  (if (<= (count numbers) 1)
      #t
      (if (< (first numbers) (first (butfirst numbers)))
	  (ordered? (butfirst numbers))
	  #f)))
  
;; from a sentence of words, gets the words ending in an 'e'

(define (ends-e sent)
  (if (= (count sent) 0)
      '()
      (if (equal? (last(first sent)) 'e)
	  (sentence (first sent) (ends-e (butfirst sent)))
	  (sentence (ends-e (butfirst sent))))))

;; to devise wether the `(or <p1> <p2> ... <pn>)` is a special form
;; or no, we simply need to make use of the general evaluation rule
;; that we learned with excercise 1.6.
;; simply make sure that one of the predicates is calling the function
;; itself after a true predicate and if it hangs, than it is not a special
;; form, because it tries to evaluate all the sub-expressions before
;; executing the `or` expression

(define (is-or-special)
  (if (or (= 1 1) (is-or-special))
      #t
      #f))
