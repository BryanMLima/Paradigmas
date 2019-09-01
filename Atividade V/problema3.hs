cabeca :: [t] -> t
cabeca (a:_) = a

menor :: [Int] -> Int
menor (a:b) | (a < b) = a
            | otherwise menor b

main = do
	print(comp [21, 0, -90])