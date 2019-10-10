alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

aprovados :: [(Int, String, Float)] -> [String]
aprovados x = map getNome (filter calcNota alunos)

-- aprovados2 :: [(Int, String, Float)] -> [String]
-- aprovados2 lista = [aprov | aprov <- getNome lista]

calcNota :: (Int, String, Float) -> Bool
calcNota (_,b,c) = (c >= 6)

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

pares :: [(Int, String, Float)] -> [(Int, String, Float), (Int, String, Float)]
pares (a:[]) = a
pares (a:b) = 

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

main = do
    print (alunos)
    -- print("a")