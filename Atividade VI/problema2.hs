data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float
area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b a) = b * a
area (Triangulo a b) = (b * a)/2

minhaForma :: Forma
minhaForma = (Triangulo 3 4)

main = do
	print(area minhaForma)