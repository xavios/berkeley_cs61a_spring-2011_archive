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

(define (switch sent)
  (if (= (count sent) 0)
      '()
       (sentence (switch (butlast sent)) (change (last sent)))))
