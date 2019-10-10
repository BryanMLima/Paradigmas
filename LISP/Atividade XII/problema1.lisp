(defun soma (lista)
    (if (null lista)
        0
        (+ (car lista) (soma (cdr lista)))
    )
)

(defun main()
    (write-line (write-to-string (soma '(10 12 13))))
)

(main)