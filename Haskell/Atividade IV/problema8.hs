func :: Float -> Float -> Float -> String
func x y z = do
    let x1 = ((-y + sqrt(y*y - 4*x*z))/(2*x))
    let x2 = ((-y - sqrt(y*y - 4*x*z))/(2*x))
    

main = do
    aS <- getLine
    bS <- getLine
    cS <- getLine
    let a = (read aS :: Float)
    let b = (read bS :: Float)
    let c = (read cS :: Float)
    print(func a b c)
