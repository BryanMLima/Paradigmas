func :: Int -> Int
func 0 = 0
func 1 = 1
func n = func(n-2) + func(n-1)

main = do
    input <- getLine
    let n = (read input :: Int)
    print(func n)
