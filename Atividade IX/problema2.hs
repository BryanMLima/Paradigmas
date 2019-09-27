func :: Float -> Float -> Float -> Float
func a b c = ((\x y z -> (x + y + z)/3)a b c)

conceito :: Float -> String
conceito x = ((\x -> if x >= 6 then "Aprovado" else "Reprovado")x)

main = do
    print(conceito (func 5 6 6))