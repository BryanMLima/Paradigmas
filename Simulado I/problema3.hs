-- x1 y1 1 | x1 y1
-- x2 y2 1 | x2 y2
-- x3 y3 1 | x3 y3

-- (x1 * y2 * 1) + (y1 * 1 * x3) + (1 * x2 * y3)
-- -((1 * y2 * x3) + (x1 * 1 * y3) + (y1 * x2 *1))

type Ponto = (Float, Float)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (x1, y1) (x2, y2) (x3, y3)
    | ((determinante (x1, y1) (x2, y2) (x3, y3)) == 0) = True
    | otherwise = False

determinante :: Ponto -> Ponto -> Ponto -> Float
determinante (x1, y1) (x2, y2) (x3, y3) =
    (x1 * y2 * 1) + (y1 * 1 * x3) + (1 * x2 * y3)
    -((1 * y2 * x3) + (x1 * 1 * y3) + (y1 * x2 *1))
    
ponto1 :: Ponto
ponto1 = (0,5)
ponto2 = (1,3)
ponto3 = (2,2)

distancia :: Ponto -> Ponto -> Float
distancia (x1, y1) (x2, y2) = (sqrt((x2 - x1)**2 + (y2 - y1)**2))

menorDistancia :: [Ponto] -> Float

main = do
    print(colineares ponto1 ponto2 ponto3)