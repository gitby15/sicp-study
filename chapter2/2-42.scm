; 计算八皇后问题，先照着答案做一遍


(define empty-board '())

(define (adjoin-position new-row k rest-of-queens)
        (cons new-row rest-of-queens)
)


(define (filter proc array)
        ( )
)

(define (flatmap proc seq)
        (acc)
)

(define (safe? k position) 
        (iter-check (car position) (cdr position) 1)
)


(define (iter-check row-of-new-queen rest-of-queens i)
    (if (null? rest-of-queens)  ; 下方所有皇后检查完毕，新皇后安全
        #t
        (let ((row-of-current-queen (car rest-of-queens)))
            (if (or (= row-of-new-queen row-of-current-queen)           ; 行碰撞
                    (= row-of-new-queen (+ i row-of-current-queen))     ; 右下方碰撞
                    (= row-of-new-queen (- row-of-current-queen i)))    ; 左下方碰撞
                #f
                (iter-check row-of-new-queen 
                            (cdr rest-of-queens)    ; 继续检查剩余的皇后
                            (+ i 1))))))            ; 更新步进值




(define (queens board-size) 
        (define (queen-cols k)
                (if (= k 0)
                    (list empty-board)
                    (filter 
                        (lambda (positions) (safe? k positions))
                        (flatmap 
                            (lambda (rest-of-queens) 
                                (map (lambda (new-row) 
                                             (adjoin-position new-row k rest-pf-queens)
                                     )
                                     (enumerate-interval 1 board-size)
                                )
                            )
                            (queen-cols (- k 1))
                        )
                    )
                )
        )
        (quees-cols board-size)
)