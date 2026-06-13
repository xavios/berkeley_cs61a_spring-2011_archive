(define (piglvow wd)(word wd 'way))
(define (pigl1cons wd)(word (bf wd) (first wd) 'ay))
(define (pigl2cons wd)(word (bf (bf wd)) (first wd)(first (bf wd)) 'ay))

;; PigLatin implementation
(define (piglatin wd)
  (if (member? (first wd) 'aeiou)
      (piglvow wd)
      (if (member? (first(bf wd)) 'aeiou)
      	(pigl1cons wd)
      	(pigl2cons wd))))

(define (piglrec wd)
  (if (member? (first wd) 'aeiou)
      (word wd 'ay)
      (piglrec (word (bf wd) (first wd)))))
