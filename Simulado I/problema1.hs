cabeca :: [t] -> t
cabeca (a:_) = a

busca :: [Int] -> Int -> Bool
busca [] x = False
busca (a:b) x | (x == a) = True
              | otherwise = (busca b x)

mesmosElementos :: [Int] -> [Int] -> Bool
mesmosElementos list1 list2 =
    (compararListas list1 list2) && (compararListas list2 list1)
              
compararListas :: [Int] -> [Int] -> Bool
compararListas (a:b) x | not (busca a x) = False
compararListas (a:b) (c:d) = 

lista1 = [1,2,2,1,2,3,1,2,3,4]
lista2 = [4,1,2,3,1,1,2,1,2,1,2,1,2,1,2,2,2,2,2,2,2,2,9]

main = do
    print(mesmosElementos lista1 lista2)
    -- print("asd")