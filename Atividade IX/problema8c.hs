import Data.Matrix
import Data.List

verifyNumber :: [Int] -> Int -> Int
verifyNumber [] _ = 0
verifyNumber (a:b) i | (a == i) = (verifyNumber b i) + 1 
                     | otherwise = (verifyNumber b i)

verify :: [Int] -> Int -> Bool
verify _ 0 = True
verify a b | (verifyNumber a b) == 1 = True
           | otherwise = False

verify_all :: [Int] -> Int -> Bool
verify_all [] _ = True
verify_all _ 0 = True
verify_all a n | not(verify a n) = False
               | otherwise = (verify_all a (n-1))

soma :: [Int] -> Int -> Int
soma _ (-1) = 0
soma a n = (soma a (n-1)) + a!!n

-- x = (n*m)
somaLinhas :: [Int] -> Int -> Bool
somaLinhas a x | (soma a (x-1) == (soma a x)) = (somaLinhas a (x-))


    if (soma a (n-1)) && (soma a m*(n-1))

-- [2, 7, 6, 9, 5, 1, 4, 3, 8]
--  0  1  2  3  4  5  6  7  8

main = do
    let b = (fromLists 
            [[2, 7, 6],
             [9, 5, 1],
             [4, 3, 8]])

    let n = (nrows b)
    let m = (ncols b)
    -- Verifica 1 a n^2
    print(verify_all (toList b) ((n^2)))
    --verifica soma da primeira linha
    -- print(soma (toList b) (n-1))


    print(sum)



