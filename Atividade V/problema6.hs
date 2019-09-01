busca :: [Int] -> Int -> Int
busca [] x = 0
busca (a:b) x | (x == a) = 
			  | otherwise = (busca b x)

cont :: Int -> Int
cont 
main = do
	print(busca [1,4,9,3,4,2] 2)