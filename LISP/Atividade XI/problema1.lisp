(defun power (a b)
    (expt a b)
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (power x y)))
)

(main)