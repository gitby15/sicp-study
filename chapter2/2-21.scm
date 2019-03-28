; 过程 square-list 以一个数值表为参数， 返回每个数的平方构成的表
; (square-list (list 1 2 3 4))
; (1 4 9 16)


; 写法一
(define (square-list items)
  (if (null? items)
       items
       (cons (* (car items) (car items)) (square-list (cdr items)))
  )
)

(square-list (list 1 2 3 4))


; 测试代码
(square-list (list 1 2 3 4)); => (1 4 9 16)
(square-list (list 2 4 6 8)); => (1 4 9 16)
(square-list (list 0 1)); => (0 1)
(square-list (list )); => ()





; 写法二
(define (map proc items)
        (if (null? items)
             items
             (cons (proc (car items))
                    (map proc (cdr items))
             )
        )

)

(define (square-list items)
        (map (lambda (x) (* x x)) items)
)

; 测试代码
(square-list (list 1 2 3 4)); => (1 4 9 16)
(square-list (list 2 4 6 8)); => (1 4 9 16)
(square-list (list 0 1)); => (0 1)
(square-list (list )); => ()