alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: [(Int, String, Float)] -> Float
getNota [(_,_,c)] = c

aprovados :: [(Int, String, Float)] -> Bool
aprovados alunos = (getNota alunos >= 6)

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

main = do
    print (filter (aprovados alunos))
    -- print("a")