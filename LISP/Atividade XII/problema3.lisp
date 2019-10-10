(defun menor (lista)
    (if (null lista)
        0
        (comp (car lista) lista)
    )
)

(defun comp (a lista)
    (cond
        ((null lista) a)
        ((< a (car lista)) (comp a (cdr lista)))
        (t (comp (car lista) (cdr lista)))
    )
)

(defun main()
    (write-line (write-to-string (menor (list 72 9321 9 9823 -382 -35 6 7))))
)

(main)