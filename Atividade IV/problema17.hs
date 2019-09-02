mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc x y =
	mdc y (mod x y)

main = do
	as <- getLine
	bs <- getLine
	let a = (read as :: Int)
	let b = (read bs :: Int)
	if a > b then
		print(mdc a b)
	else
		print(mdc b a)