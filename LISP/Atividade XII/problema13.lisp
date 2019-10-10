(defun apagarEnquanto (func lista)
    (cond
        ((null lista) ())
        ((not (funcall func (car lista))) (cdr lista))
        (cons (car lista) (apagarEnquanto func (cdr lista)))
    )
)

(defun ehpar (n)
    (= (mod n 2) 0)
)

(defun main()
    (write-line (write-to-string (apagarEnquanto (function ehpar) (list 2 4 1 2 3 4 5))))
)

(main)