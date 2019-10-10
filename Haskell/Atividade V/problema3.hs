cabeca :: [t] -> t
cabeca (a:_) = a

menor :: [Int] -> Int
menor list = (comp (cabeca list) list)

comp :: Int -> [Int] -> Int
comp a [] = a
comp x (a:b) | (x < a) = (comp x b)
             | otherwise = (comp a b)

main = do
    print(menor[-21, 1, -90, 90, -120391023,-102381238,31])