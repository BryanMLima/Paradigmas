data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 (No 35 (No 35 Null Null) Null) Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x)   = ((maioresQueElemento esq x) + (maioresQueElemento dir x)) + 1
    | otherwise =  (maioresQueElemento esq x) + (maioresQueElemento dir x)

ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n == x)  = ((ocorrenciasElemento esq x) + (ocorrenciasElemento dir x)) + 1
    | otherwise = (ocorrenciasElemento esq x)  + (ocorrenciasElemento dir x)

mediaElementos :: Arvore -> Float
mediaElementos Null = 0
mediaElementos a = (fromIntegral (somaElementos a))/(fromIntegral (quantidade a))

quantidade :: Arvore -> Int
quantidade Null = 0
quantidade (No n esq dir) = ((quantidade esq) + (quantidade dir)) + 1

elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = (n : (elementos esq) ++ (elementos dir))
    
limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))
                               
main = do
    print(somaElementos minhaArvore)
    -- print(buscaElemento minhaArvore 30)
    -- print(buscaElemento minhaArvore 55)
    -- print(minimoElemento minhaArvore)
    -- print(ocorrenciasElemento minhaArvore 35)
    -- print(maioresQueElemento minhaArvore 100)
    print(quantidade minhaArvore)
    print(mediaElementos minhaArvore)
    print(elementos minhaArvore)