func :: Float -> Float -> Float -> Float
func a b c =
	if a > b && a > c then
		a
	else if b > c && b > a then
		b
	else
		c
main = do
	as <- getLine
	bs <- getLine
	cs <- getLine
	let a = (read as :: Float)	
	let b = (read bs :: Float)
	let c = (read cs :: Float)
	print(func a b c)

