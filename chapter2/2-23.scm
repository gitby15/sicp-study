; 实现一个for-each函数，不需要返回任何值

(define (for-each proc items) 
        (if (null? items)
             items
             (begin
                  (proc (car items))
                  (for-each proc (cdr items))
             )
        )

)

; 测试代码
(for-each (lambda (x) (newline) (display x)) (list 1 2 3 4))
