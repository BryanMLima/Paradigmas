func :: Bool -> Bool -> Bool
func a b = (a&&not(b)) || (not(a)&&b)

main = do
	aString <- getLine
	bString <- getLine
	let a = (read aString :: Bool)
	let b = (read bString :: Bool)
	print(func a b)
