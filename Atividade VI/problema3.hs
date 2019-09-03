data Ponto = Ponto2d Float Float | Ponto3d Float Float Float
distancia :: Ponto -> Ponto -> Float
distancia (Ponto2d x1 y1) (Ponto2d x2 y2) = (sqrt((x2 - x1)**2 + (y2 - y1)**2))

distancia (Ponto3d x1 y1 z1) (Ponto3d x2 y2 z2) = (sqrt((x2 - x1)**2 + (y2 - y1)**2 + (z2 - z1)**2))

ponto21 :: Ponto
ponto21 = (Ponto2d 2 2)

ponto22 :: Ponto
ponto22 = (Ponto2d 1 1)

ponto31 :: Ponto
ponto31 = (Ponto3d 1 1 1)

ponto32 :: Ponto
ponto32 = (Ponto3d 9 9 9)

main = do
	print(distancia ponto31 ponto32)
	print(distancia ponto21 ponto22)