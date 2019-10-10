(defun mapear (lista func)
    (if (null lista)
        ()
        (cons (funcall func (car lista)) (mapear (cdr lista) func))
    )
)

(defun ehpar (n)
    (= (mod n 2) 0)
)

(defun main()
    (write-line (write-to-string (mapear (list 1 2 3 4 5 6) (function ehpar))))
)

(main)