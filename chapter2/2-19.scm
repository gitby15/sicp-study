; 请考虑1.2.2节的兑换零钱方式计数程序，现在cc函数需要增加一个参数，不再限制币种
; 简而言之，就是设计一个函数，输入一个sum和一个list，用list中的元素相加得到sum，求有多少种解法
;(define us-coins (list 50 25 10 5 1))
;(define uk-coins (list 100 50 20 10 5 2 1 0.5))
;(cc 100 us-coins)
;=>292


;思路：使用树形递归，切换币种的方式，使用cdr序对来完成
(define (cc amount coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (null? coins)) 0)
        (else 
          (+ (cc (- amount (car coins)) coins)
             (cc amount (cdr coins))
          )
        )
  )
)


;测试代码
(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(cc 100 us-coins);=>292
(cc 100 uk-coins);=>104561
(cc 200 us-coins);=>2435