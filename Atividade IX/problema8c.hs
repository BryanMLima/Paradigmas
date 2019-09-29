import Data.Matrix

verifyNumber :: [Int] -> Int -> Int
verifyNumber [] _ = 0
verifyNumber (a:b) i | (a == i) = (verifyNumber b i) + 1 
                     | otherwise = (verifyNumber b i)

verify :: [Int] -> Int -> Bool
verify a b | (verifyNumber a b) > 1 = False
           | otherwise = True
          
main = do
    let b = (fromLists [[2, 7, 6],
             [9, 5, 1],
             [4, 3, 8]])

    let n = (nrows b)
    print (all (verify (toList b) 1) [1..n*2])
    -- print(all (verify (toList b) 1) [1..n**2])
    -- print(fromLists b)