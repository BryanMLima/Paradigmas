func :: Float -> Float -> Float -> Float
func a b c = 
    ((\x y z -> 
        if x > y then
            if x > z then
                x
            else
                z
        else
            if y > x then
                if y > z then
                    y
                else
                    z
            else
                z) a b c)

main = do
    aString <- getLine
    bString <- getLine
    cString <- getLine
    let a = (read aString :: Float)
    let b = (read bString :: Float)
    let c = (read cString :: Float)
    print (func a b c)