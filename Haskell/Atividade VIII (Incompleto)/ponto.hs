module Ponto (Ponto (Ponto2D), distancia, colineares, formaTriangulo) where

data Ponto = Ponto2D (Float, Float)
    deriving Show

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (x1, y1)) (Ponto2D (x2, y2)) =
    sqrt((x2-x1)**2 + (y2-y1)**2)

-- | x1 y1 1 | x1 y1
-- | x2 y2 1 | x2 y2
-- | x3 y3 1 | x3 y3

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto2D (x1,y1)) (Ponto2D (x2,y2)) (Ponto2D (x3,y3)) =
    -- let det = ((x1*y2 + y1*x3 + x2*y3) - (y1*x2 + x1*y3 + y2*x3))
    if ((x1*y2 + y1*x3 + x2*y3) - (y1*x2 + x1*y3 + y2*x3)) == 0 then
        True
    else
        False

formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
formaTriangulo (ponto1) (ponto2) (ponto3) =
    not (colineares ponto1 ponto2 ponto3)


