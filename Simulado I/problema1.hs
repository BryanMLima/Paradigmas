busca :: [Int] -> Int -> Bool
busca [] x = False
busca (a:b) x | (x == a) = True
              | otherwise = (busca b x)

mesmosElementos :: [Int] -> [Int] -> Bool
mesmosElementos list1 list2 =
    (compararListas list1 list2) && (compararListas list2 list1)
              
compararListas :: [Int] -> [Int] -> Bool
compararListas _ [] = True
compararListas [] _ = True
compararListas (a:b) list | ((busca list a) == True) = (compararListas b list)
                          | otherwise = False

lista1 = [1,2,2,1,2,3,1,2,3,4,9,1,2,3,1,3,3,3,1,2,3,1,2,3,1,3,4]
lista2 = [4,1,2,3,1,1,2,1,2,1,2,1,2,1,2,2,2,2,2,2,2,2,9]

main = do
    print(mesmosElementos lista1 lista2)