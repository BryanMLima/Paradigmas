import Pilha (Pilha (Stack), emptyStack, push, pop, top)

main = do
    print (push (push emptyStack 1) 2)
    print (top (Stack [1,2,3,4,5]))
    print (pop (Stack [1,2,3,4,5]))
