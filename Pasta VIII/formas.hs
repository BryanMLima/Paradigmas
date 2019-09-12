module Formas (Forma (Retangulo,
                      Elipse,
                      Circulo,
                      Triangulo,
                      Poligono), area) where

data Forma = Retangulo Float Float
           | Elipse Float Float
           | Circulo Float
           | Triangulo Float Float
           | Poligono [(Float,Float)]
           deriving Show

area :: Forma -> Float
area (Retangulo base altura) = base * altura
area (Triangulo base altura) = (base * altura)/2
area (Elipse raio1 raio2) = pi * raio2 * raio1
area (Circulo raio) = pi * raio * raio
