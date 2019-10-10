mapear :: (t -> y) -> [t] -> [y]
mapear _ [] = []
mapear f (a:b) = (f a:mapear f b)

main = do
    print(mapear abs [-1,-2,-3,-4,-5,-6,10])