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
		print((a*b) `div` (mdc a b))
	else
		print((a*b) `div` (mdc b a))