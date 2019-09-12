class (Integral x) => MeuInt x where
    bigger :: x-> x-> x
    smaller :: x-> x-> x
    par :: x -> Bool
    impar :: x -> Bool
    primo :: x -> Bool
    mdc :: x -> x -> x -> Bool
    (===) :: x -> x -> Bool

    bigger a b | a > b = a
               | otherwise = b

    smaller a b | a == (bigger a b) = b
                | otherwise = a

    par a | (mod a 2) == 0 = True
          | otherwise = False

    impar a | (par a) = False
            | otherwise = True

    primo 1 = False
    primo 2 = True
    primo n | (length [x | x <- [2 .. n-1], mod n x ==0]) > 0 = False
            | otherwise = True

    x === y | ((bigger x y) - (smaller x y)) > 1 = False
            | otherwise = True


instance MeuInt Integer
instance MeuInt Int

main = do
    print(par (8::Integer))
    print(impar (8::Integer))