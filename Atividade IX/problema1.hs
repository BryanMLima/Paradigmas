import Prelude

xor :: Bool -> Bool -> Bool
xor a b = (\x -> (\y -> (x or y) and (not (x and y))))

main = do
    print (xor 1 0)