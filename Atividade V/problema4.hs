cabeca :: [t] -> t
cabeca (a:_) = a

maior :: [Int] -> Int
maior list = (compMaior (cabeca list) list)

menor :: [Int] -> Int
menor list = (compMenor (cabeca list) list)

compMenor :: Int -> [Int] -> Int
compMenor a [] = a
compMenor x (a:b) | (x < a) = (compMenor x b)
                  | otherwise = (compMenor a b)

compMaior :: Int -> [Int] -> Int
compMaior a [] = a
compMaior x (a:b) | (x > a) = (compMaior x b)
                  | otherwise = (compMaior a b)
                  
diferenca :: [Int] -> Int
diferenca a | (menor a) < 0 = ((maior a) - (-(menor a)))
            | otherwise = ((maior a) - (menor a))

main = do
    print(diferenca[-21, 1, -90123, 900,31])
