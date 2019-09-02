apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar x (a:b) | (x > 0)   = apagar (x-1) b
               | otherwise = (a:b)

main = do
    print(apagar 3 [1,2,3,4,5])