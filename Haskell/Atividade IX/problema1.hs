xor :: Bool -> Bool -> Bool
xor a b = ((\x y -> (x || y) && (not (x && y))) a b)

main = do
    print (xor True True)