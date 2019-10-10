(defun absoluto (n)
    (if (< n 0)
        (- 0 n)
        n)
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (absoluto x)))
)

(main)