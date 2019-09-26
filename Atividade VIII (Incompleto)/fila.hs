module Fila (Fila (Queue), enqueue, dequeue, first, emptyQueue) where

data Fila t = Queue [t]
    deriving (Eq, Show)


enqueue :: Fila t -> t -> Fila t
enqueue (Queue a) b = Queue (a++[b])

dequeue :: Fila t -> Fila t
dequeue (Queue []) = error "Empty"
dequeue (Queue (a:b)) = Queue b

first :: Fila t -> t
first (Queue []) = error "Empty"
first (Queue (a:b)) = a

emptyQueue :: Fila t
emptyQueue = Queue []