(defun sequencia (n)
    (cond
        ((= n 1) 1000)
        (t (- (sequencia (- n 1)) (* (- n 1) 10)))
    )
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (sequencia x)))
)

(main)