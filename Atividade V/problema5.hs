busca :: [Int] -> Int -> Bool
busca [] x = False
busca (a:b) x | (x == a) = True
			  | otherwise = (busca b x)

main = do
	print(busca [1,4,9,3,4,2] 10)