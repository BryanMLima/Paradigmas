ehpar :: Int -> Bool
ehpar = ((\x -> if (mod x 2) == 0 then True else False))

main = do
    print (map (ehpar) [0,1,2,3,4,5,6])