ocorrencia :: [Int] -> Int -> Int
ocorrencia [] _ = 0
ocorrencia (a:b) x | (a == x) = (ocorrencia b x) + 1
                   | otherwise = ocorrencia b x   

main = do
    print(ocorrencia [1,4,2,9,3,4,2] 1)