(define (lp2 wd) (sentence wd)) 

(define (lp3 wd)
  (sentence
   (lp2 (butlast wd))
   (lp2 (butfirst wd))))

(define (lp4 wd)
  (sentence
   (lp3 (butlast wd))
   (lp2 (word (last (butlast wd)) (last wd)))))

(define (lp5 wd)
  (sentence
   (lp4 (butlast wd))
   (word (last (butlast wd)) (last wd))))

(define (letter-pairs wd)
  (if (= (count wd) 2)
      (sentence wd)
      (sentence
       (letter-pairs (butlast wd))
       (word (last (butlast wd)) (last wd)))))
