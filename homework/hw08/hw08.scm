(define (my-filter pred s) 
  (cond ((null? s) s)
        ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
        (else (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 
  (cond ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))

(define (accumulate joiner start n term)
  (if (= n 1)
    (joiner start (term 1))
    (joiner (accumulate joiner start (- n 1) term) (term n))))

(define (no-repeats lst) 
  (if (null? lst)
    lst
    (cons (car lst) (no-repeats (my-filter (lambda (s) (not (= s (car lst)))) (cdr lst))))))
