import Data.Matrix

somaMatrix :: [Int] -> [Int] -> Int
somaMatrix [] _ = 0
somaMatrix _ [] = 0
somaMatrix (a:b) (c:d) = a + c + (somaMatrix b d)

          
main = do
    let b = matrix 4 4 $ \(i,j) -> 1
    let a = matrix 4 4 $ \(i,j) -> 2
    print(somaMatrix (toList b) (toList a))