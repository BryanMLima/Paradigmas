import Data.Matrix

somaMatrix :: [Int] -> Int
somaMatrix [] = 0
somaMatrix (a:b) = a + (somaMatrix b)

          
main = do
    let b = matrix 4 4 $ \(i,j) -> 1
    print(somaMatrix (toList b))