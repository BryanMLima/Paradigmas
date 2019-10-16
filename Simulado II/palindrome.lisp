(defun palindrome (n)
    (= n (reverso n))
)

(defun reverso (lista)
    (if (null lista)
        ()
        (list* (reverso (cdr lista)) (car lista))
    )
)

;; (defun reverso (reversa lista)
;;     (if (null lista)
;;         reversa
;;         (reverso (list* (car lista) reversa ) (cdr lista))
;;     )
;; )

(defun compare (lista1 lista2)
    (if (or (null lista1) (null lista2))
    
    )
)

(defun main()
    (write-line (write-to-string (palindrome (list 1 2 3 3 2 1))))
    ;; (write-line (write-to-string (reverso (list 2 2 3 3 2 1))))
)

(main)