data Ponto = Ponto3D (Float, Float, Float)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto3D (x1, y1, z1)) (Ponto3D (x2, y2, z2)) =
    sqrt((x2-x1)**2 + (y2-y1)**2 + (z2-z1)**2)
    
    
main = do
    print (distancia (Ponto3D (4, -8, -9)) (Ponto3D (2, -3, -5)))
