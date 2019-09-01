media :: [Int] -> Float
media [] = 0
media x = (fromIntegral(soma x))/(fromIntegral(comprimento x))

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (_:b) = 1 + (comprimento b)

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + (soma b)

main = do
    print(media [6,7,5])