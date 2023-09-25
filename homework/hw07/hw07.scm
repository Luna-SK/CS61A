(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst)
  (cond ((or (null? asc-lst) (null? (cdr asc-lst))) #t)
        ((> (car asc-lst) (cadr asc-lst)) #f)
        (else (ascending? (cdr asc-lst)))))

(define (square n) (* n n))

(define (pow base exp)
    (cond ((= exp 1) base)
          ((odd? exp) (* base (pow base (- exp 1))))
          ((even? exp) (square (pow base (/ exp 2))))))
