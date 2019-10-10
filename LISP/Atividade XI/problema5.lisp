(defun media (a b c)
    (setq nota (/ (+ c (+ a b)) 3))
    (if (< nota 6)
    "Reprovado"
    "Aprovado")
)

(defun main()
    (setq x (read))
    (setq y (read))
    (setq z (read))
    (write-line (write-to-string (media x y z)))
)

(main)