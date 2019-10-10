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
		if (mdc a b == 1) then
			print("sim")
		else
			print("nao")
	else
		if (mdc a b == 1) then
			print("sim")
		else
			print("nao")mdc