data Arvore = Null | No Int Arvore Arvore

instance Eq Arvore where
    Null == Null = True
    _    == _    = False

minhaArvore1 :: Arvore
minhaArvore1 = No 52 (No 32 (No 12 Null Null) (No 35 (No 12 (No 12 Null Null) Null) Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

minhaArvore2 :: Arvore
minhaArvore2 = No 6 ((No 2 (No 1 Null Null) (No 4 (No 3 Null Null) (No 5 Null Null))))((No 7 Null (No 9 (No 8 Null Null) Null)))
                                   
somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n == x) = (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x) + 1
    | otherwise = (ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x) = (maioresQueElemento esq x) + (maioresQueElemento dir x) + 1
    | otherwise = (maioresQueElemento esq x) + (maioresQueElemento dir x)
                               
subtraiParesImpares :: Arvore -> Int
subtraiParesImpares tree = (somaPares tree) - (somaImpares tree)

somaPares :: Arvore -> Int
somaPares Null = 0
somaPares (No n esq dir) | (mod n 2) == 0 = (somaPares esq) + (somaPares dir) + n
                         | otherwise = (somaPares esq) + (somaPares dir)

somaImpares :: Arvore -> Int
somaImpares Null = 0
somaImpares (No n esq dir) | (mod n 2) /= 0 = (somaImpares esq) + (somaImpares dir) + n
                           | otherwise = (somaImpares esq) + (somaImpares dir)

igual :: Arvore -> Arvore -> Bool
igual Null Null = True
igual Null (No n esq dir) = False
igual (No n esq dir) Null = False
igual (No n1 esq1 dir1) (No n2 esq2 dir2)
    | (n1 /= n2) = False
    | otherwise = (igual dir1 dir2) && (igual esq1 esq2)

altura :: Arvore -> Int
altura (No n Null Null) = 0
altura (No n esq dir) = (maximo ((altura esq) + 1) ((altura dir) + 1))

maximo :: Int -> Int -> Int
maximo a b | (a > b) = a
           | otherwise = b

folhas :: Arvore -> Int
folhas (No _ Null Null) = 1
folhas (No _ Null dir)  = folhas dir
folhas (No _ esq Null)  = folhas esq
folhas (No n esq dir) = folhas esq + folhas dir

emOrdem :: Arvore -> [Int]
emOrdem (No n Null Null) = [n]
emOrdem (No n Null dir)  = [n] ++ emOrdem(dir)
emOrdem (No n esq Null)  = emOrdem(esq) ++ [n]
emOrdem (No n esq dir) = emOrdem(esq) ++ [n] ++ emOrdem(dir)

menoresQueElemento :: Arvore -> Int -> [Int]
menoresQueElemento Null _ = []
menoresQueElemento (No n esq dir) x 
    | (n < x) = (menoresQueElemento esq x) ++ (menoresQueElemento dir x) ++ [n]
    | otherwise = (menoresQueElemento esq x) ++ (menoresQueElemento dir x)

ehPar :: Int -> Bool
ehPar x = (mod x 2 == 0)

main = do
    -- print(ocorrenciasElemento minhaArvore 99)
    -- print(maioresQueElemento minhaArvore 99)
    -- print(subtraiParesImpares minhaArvore)
    -- print(igual minhaArvore1 minhaArvore2)
    -- print(altura minhaArvore2)
    -- print(folhas minhaArvore1)
    -- print(emOrdem minhaArvore2)
    print(filter ehPar (menoresQueElemento minhaArvore2 30))

    -- putStrLn (show (somaElementos minhaArvore))
    -- putStrLn (show (buscaElemento minhaArvore 30))
    -- putStrLn (show (buscaElemento minhaArvore 55))
    -- putStrLn (show (minimoElemento minhaArvore))
