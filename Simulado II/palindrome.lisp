;; (defun palindrome (n)
;;     (= n (reverso n))
;; )

(defun reverso (lista)
    (if (null lista)
        ()
        (concatenate 'list (reverso (cdr lista)) (car lista))
    )
)

(defun main()
    ;; (write-line (write-to-string (palindrome (list 1 2 3 3 2 1))))
    (write-line (write-to-string (reverso (list 2 2 3 3 2 1))))
)

(main)