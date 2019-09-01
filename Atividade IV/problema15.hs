-- func :: Int -> Int
-- func r =


mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc x y =
	mdc y (mod x y)

main = do
	ns <- getLine
	let n = (read ns :: Int)
	let r = 1
	let i = r
	let p = 0
	let j = p

	if r < n then
		if (mdc n r == 1) then
			p <- p + 1
			r <- r + 1
	else
		print(p)

