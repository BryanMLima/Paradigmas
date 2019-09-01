type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

numAluno :: Int
numAluno = 4

aluno :: Int -> Aluno
aluno 1 = ("Aaa", "Paradig", 7, 8, 6) --7
aluno 2 = ("Bbb", "TC", 5, 9, 10) --8
aluno 3 = ("Ccc", "Paradig", 1, 8, 4) --4.33
aluno 4 = ("Ddd", "TC", 4, 6, 7) --5.66

media :: Int -> Float
media 0 = 0
media x =
    media2 (aluno x)

media2 :: Aluno -> Float
media2 (_, _, n1, n2, n3) =
    (n1 + n2 + n3)/3

somaMedias :: Int -> Float
somaMedias 0 = 0
somaMedias n =
    (somaMedias (n-1)) + (media n)

calcMedias :: Int -> Float
calcMedias n =
    (somaMedias n)/getNum

getNome :: Aluno -> Nome
getNome (nome, _a, _b, _c, _d) = nome

getNum :: Float
getNum = (fromIntegral numAluno)

main = do
    print(calcMedias numAluno)