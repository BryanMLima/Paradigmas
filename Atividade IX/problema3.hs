fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
-- fibo x = fibo (x-1) + fibo (x-2)
fibo x = ((\x -> fibo (x-1) + fibo (x-2))x)

main = do
    aString <- getLine
    let a = (read aString :: Int)
    print (fibo a)