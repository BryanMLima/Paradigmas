(defun fibo (n)
    (cond
        ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fibo (- n 1)) (fibo (- n 2)))))
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (fibo (+ 1 x)))
)

(main)