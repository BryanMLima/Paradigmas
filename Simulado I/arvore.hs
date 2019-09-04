data Arvore = Null | No Int Arvore Arvore

minhaArvore1 :: Arvore
minhaArvore1 = No 52 (No 32 (No 12 Null Null) (No 35 (No 12 (No 12 Null Null) Null) Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

minhaArvore2 :: Arvore
minhaArvore2 = No 52 (No 12 Null Null) (No 12 Null Null)
                                   
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
folhas (No n Null Null) = 1
folhas (No n Null dir)  = 0
folhas (No n esq Null)  = 0
folhas (No n esq dir) = folhas esq + folhas dir

main = do
    -- print(ocorrenciasElemento minhaArvore 99)
    -- print(maioresQueElemento minhaArvore 99)
    -- print(subtraiParesImpares minhaArvore)
    -- print(igual minhaArvore1 minhaArvore2)
    -- print(altura minhaArvore2)
    print(folhas minhaArvore1)

    -- putStrLn (show (somaElementos minhaArvore))
    -- putStrLn (show (buscaElemento minhaArvore 30))
    -- putStrLn (show (buscaElemento minhaArvore 55))
    -- putStrLn (show (minimoElemento minhaArvore))
