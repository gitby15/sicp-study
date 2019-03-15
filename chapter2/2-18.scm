;请定义出过程reverse，它以一个表为参数，返回的表中所包含的元素与参数表相同，但排列顺序与参数表相反
;(reverse (list 1 3 9 16 25))
;(25 16 9 3 1)



;; 思路1：使用两个指针，遍历一次，将指针逆转，空间复杂度O(1)，但是scheme不知道该怎么为序对设值

;(define (reverse array)         
;      (set! (cdr array) (change (array (cdr array)))); 无法为cdr array设值
;)

;; 逆转q的指向，并返回q原来的指向
;; (define (change p q)
;;         (if (null? (cdr q)) 
;;             (
;;               (set! (cdr q) p)
;;               q
;;             )

;;               (let (x ((cdr q)))
;;                    (
;;                      (set! (cdr q) p)
;;                      (change (q x))
;;                    )
;;               )
              
;;             )
;;         )
;; )





; 思路2：构造新序对，空间复杂度O(n)




(define (reverse array)
  (create array ())
)

(define (create node previous)
  (if (null? node) 
    previous
    (create (cdr node) (cons (car node) previous))
  )
)
; 测试代码
(reverse (list 1 3 9 16 25));=> (25 16 9 3 1)
(reverse (list 5 4 3 2 1 0));=> (0 1 2 3 4 5)
(reverse (list 9));=> (0)
(reverse (list 23 24 25 26 27 28 29 30));=> (30 29 28 27 26 25 24 23)
(reverse ());=> ()


