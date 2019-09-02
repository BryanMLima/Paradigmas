apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (a:b) |(f a) = (apagarEnquanto f b)
                       | otherwise = a:b


main = do
    print(apagarEnquanto even [2,4,1,2,3,4,5])