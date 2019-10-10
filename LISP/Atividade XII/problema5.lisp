(defun busca (lista x)
    (cond
        ((null lista) NIL)
        ((= (car lista) x) T)
        (t (busca (cdr lista) x))
    )
)

(defun main()
    (setq x (read))
    (write-line (write-to-string (busca (list 72 9321 9 9823 -382 -35 6 7) x)))
)

(main)