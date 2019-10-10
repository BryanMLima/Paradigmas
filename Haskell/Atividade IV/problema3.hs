func :: Float -> Float -> Float

func b h = ((b*h)/2)
main = do
	bs <- getLine
	hs <- getLine
	let b = (read bs :: Float)
	let h = (read hs :: Float)
	print(func b h)
