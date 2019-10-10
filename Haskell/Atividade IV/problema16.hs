main = do
    as <- getLine
    bs <- getLine
    let a = (read as :: Int)
    let b = (read bs :: Int)
    if (mod a b == 0) then
        print("eh divisivel")
    else
        print("nao eh divisivel")