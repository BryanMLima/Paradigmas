(defun diferencaMaiorMenor (lista)
    (if (null lista)
        0
        (- (comp_maior (car lista) lista) (comp_menor (car lista) lista))
    )
)

(defun comp_menor (a lista)
    (cond
        ((null lista) a)
        ((< a (car lista)) (comp_menor a (cdr lista)))
        (t (comp_menor (car lista) (cdr lista)))
    )
)

(defun comp_maior (a lista)
    (cond
        ((null lista) a)
        ((> a (car lista)) (comp_maior a (cdr lista)))
        (t (comp_maior (car lista) (cdr lista)))
    )
)

(defun main()
    (write-line (write-to-string (diferencaMaiorMenor (list 72 9321 9 9823 9823 -35 6 7))))
)

(main)