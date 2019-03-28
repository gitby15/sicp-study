; 有一种定义函数具有任意实参的方式，叫带点尾部计法。
; (define (f x y . z) <body>)，z是一个序列，表示多出来的形参
; 请采用这种计法形式写出过程same-parity，它以一个或者多个整数为参数，返回所有与其第一个参数有着同样就行的参数形成的表
; (same-parity 1 2 3 4 5 6 7); => (1 3 5 7)
; (same-parity 2 3 4 5 6 7 ); => (2 4 6)


(define (get-odd oa od) 
    (cond ((odd? oa) 
              (if (null? od) 
                  (cons oa od) 
                  (cons oa (get-odd (car od) (cdr od)))
              )
          )
          
          (else 
              (if (null? od)
                  od
                  (get-odd (car od) (cdr od))
              )
          )
    )
)

(define (get-even oa od) 
         (cond ((even? oa) 
              (if (null? od) 
                  (cons oa od) 
                  (cons oa (get-even (car od) (cdr od)))
              )
          )
          
          (else 
              (if (null? od)
                  od
                  (get-even (car od) (cdr od))
              )
          )
    )
)
(define (same-parity x . z) 
  
    ;; (display 1234)
    ;; (display 12345)
    (if (odd? x)
        (get-odd x z)
        (get-even x z)
    )
  
)



; 测试代码
(same-parity 1 2 3 4 5 6 7); => (1 3 5 7)
(same-parity 2 3 4 5 6 7); => (2 4 6)
(same-parity 2 32 41 53 60 71 20 31 41 32); => (2 32 60 20 32)
