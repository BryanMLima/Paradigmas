module Main (main) where

import Ponto

main = do
    print(distancia (Ponto2D (4, 1)) (Ponto2D(1, 3)))
    print(colineares (Ponto2D (0,5)) (Ponto2D (1,3)) (Ponto2D(2,1)))