mydiv :: Int -> Int -> Maybe Int
mydiv n m | m == 0 = Nothing
          | otherwise = Just (n `div` m)

data Expr = Val Int | Div Expr Expr

evalfinal :: Expr -> Maybe Int
evalfinal (Val n) = return n
evalfinal (Div x y) = do
    n <- evalfinal x
    m <- evalfinal y
    mydiv n m

main = do
    print (evalfinal (Div (Val 6) (Val 2)))