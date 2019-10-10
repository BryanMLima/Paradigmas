primeiros :: Int -> [t] -> [t]
primeiros _ [] = []
primeiros 0 _ = []
primeiros x (a:b) = (a : primeiros (x-1) b)

main = do
    print(primeiros 3 [1,2,3,4,5,6,7,8,9,10])