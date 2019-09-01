func :: Float -> Float -> Float -> String
func a b c =
    if ((a + b + c)/3) < 6.0 then
        "Reprovado"
    else
        "Aprovado"

main = do
    print("Digite as tres notas")
    aS <- getLine
    bS <- getLine
    cS <- getLine
    let a = (read aS :: Float)
    let b = (read bS :: Float)
    let c = (read cS :: Float)
    print((func a b c))