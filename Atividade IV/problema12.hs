mdc :: Int -> Int -> Int -> Int
mdc _x 0 = _x
mdc x y =
	mdc y (mod x y)

main = do
	as <- getLine
	bs <- getLine
	let a = (read as :: Int)
	let b = (read bs :: Int)
	if a > b && b > c then
		print(mdc((mdc a b) c))
	else if (a > c && c > b)
		print(mdc b a)
