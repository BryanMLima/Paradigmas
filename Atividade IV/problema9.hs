func :: Float -> Float -> Float ->  Float -> Float -> Float -> Float
func x1 x2 y1 y2 z1 z2 =
	sqrt((x2-x1)**2+(y2-y1)**2+(z2-z1)**2)

main = do
	x1s <- getLine
	y1s <- getLine
	z1s <- getLine
	x2s <- getLine
	y2s <- getLine
	z2s <- getLine
	let x1 = (read x1s :: Float)	
	let y1 = (read y1s :: Float)
	let z1 = (read z1s :: Float)
	let x2 = (read x2s :: Float)
	let y2 = (read y2s :: Float)	
	let z2 = (read z2s :: Float)

	print(func x1 x2 y1 y2 z1 z2)
