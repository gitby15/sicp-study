; 请定义出过程last-pair， 它返回只包含给定（非空）表里最后一个元素的表
; (last-pair (list 23 72 149 34))
; (34)

; 思路：递归，判断当前序对是否最后一个节点，如果是，就返回当前序对，如果不是，指针向前
; 答案
(define (last-pair array) 
        (if (null? (cdr array))
               array
               (last-pair (cdr array))
        )
)

; 测试代码
(last-pair (list 23 72 149 34));=>(34)
(last-pair (list 1 2 3 4 5));=>(5)
(last-pair (list 23));=>(34)
(last-pair (list 0));=>(0)


