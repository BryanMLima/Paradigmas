soma([],0).
soma([H|T],X) :-
    soma(T,X1),
    X is H + X1.
% ?- soma([20,50,102],A).
% A = 172.