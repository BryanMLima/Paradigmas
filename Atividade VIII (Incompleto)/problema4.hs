module Main (main) where

import Fila

main = do
    print (enqueue (enqueue emptyQueue 89) 23)
    print (dequeue (Queue [1,2,3,4,5,6,7,8]))
    print (first (Queue [09,543,1254,523134,12]))