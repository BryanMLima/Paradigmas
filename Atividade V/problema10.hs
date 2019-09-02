filtrar :: (t -> Bool) -> [t] -> [t]
filtrar _ [] = []
filtrar f (a:b) | (f a) = (a : filtrar f b)
                | otherwise = filtrar f b

main = do
    print(filtrar even [1,2,3,4,5,6,7,8,9])