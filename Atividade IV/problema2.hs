func :: Float -> Float

func x | (x < 0) = x*(-1)
       | otherwise = x
main = do
    inputString <- getLine
    let x = (read inputString :: Float)
    print (func x)
