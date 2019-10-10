func :: Int -> Int -> Int -> String
func a b c =
    if (abs(b - c) < a) && (a < b + c) then
        if (abs(a - c) < b) && (b < a + c) then
            if (abs(a - b) < c) && (c < a + b) then
                "Eh possivel"
            else
                "nao eh possivel"
        else
            "nao eh possivel"
    else
        "Nao eh possivel"

main = do
    aS <- getLine
    bS <- getLine
    cS <- getLine
    let a = (read aS :: Int)
    let b = (read bS :: Int)
    let c = (read cS :: Int)
    print(func a b c)
