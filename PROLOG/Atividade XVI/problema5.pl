soma([],0).
soma([H|T],X) :-
    soma(T,X1),
    X is H + X1.

comprimento([],0).
comprimento([H|T],C) :-
    comprimento(T,C1),
    C is C1 + 1.

media(L,X) :-
    soma(L,X1),
    comprimento(L,X2),
    X is X1/X2.
% ?- media([10,5,0],X).
% X = 5.

% ?- media([10,5,15],X).
% X = 10.