(defun palindrome (n)
    (igual n (reverso () n))
)

(defun reverso (reversa lista)
    (if (null lista)
        reversa
        (reverso (list* (car lista) reversa ) (cdr lista))
    )
)

(defun igual (lista1 lista2)
    (if (and (null lista1) (null lista2))
        T
        (if (or (null lista1) (null lista2))
            NIL
            (if (= (car lista1) (car lista2))
                (igual (cdr lista1) (cdr lista2))
                NIL
            )
        )
    )
)

(defun main()
    (write-line (write-to-string (palindrome (list 1 2 3 3 2 1))))
    ;; (write-line (write-to-string (reverso (list 2 2 3 3 2 1))))
)

(main)