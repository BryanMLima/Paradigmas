(defun xor_ (a b)
    (and (or a b) (not (and a b)))
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (xor_ x y)))
)

(main)