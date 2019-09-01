func :: Float -> Float -> Float
func x y = x**y

main = do
	print ("Digite a base e o expoente")
	xString <- getLine
	yString <- getLine		
	let x = (read xString :: Float)
	let y = (read yString :: Float)

	print (func x y)