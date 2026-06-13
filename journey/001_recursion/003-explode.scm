(define (explode1 wd) (sentence wd))

(define (explode2 wd) (sentence (first wd) (butfirst wd)))

(define (explode3 wd) (sentence (explode2 (butlast wd)) (last wd)))

(define (explode4 wd) (sentence (explode3 (butlast wd)) (last wd)))

(define (explode wd)
  (if (= (count wd) 1)
      (sentence wd)
      (sentence (explode (butlast wd)) (last wd))))

