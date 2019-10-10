bhask :: Float -> Float -> Float -> [Float]
bhask x y z = [(root1 x y z), (root2 x y z)]

root1 :: Float -> Float -> Float -> Float
root1 x y z =
    ((\a b c -> ((-b + sqrt(b**2 - 4*a*c))/(2*a)))x y z)

root2 :: Float -> Float -> Float -> Float
root2 x y z =
    ((\a b c -> ((-b - sqrt(b**2 - 4*a*c))/(2*a)))x y z)

main = do
    aString <- getLine
    bString <- getLine
    cString <- getLine
    let a = (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)
    print (bhask a b c)