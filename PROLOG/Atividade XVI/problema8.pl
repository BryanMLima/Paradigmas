menor([],0).
menor([X],X).
menor([H,K|T],X) :-
    H =< K,
    menor([H|T],X),!.

menor([H,K|T],X) :-
    K < H,
    menor([K|T],X),!.

maior([],0).
maior([X],X).
maior([H,K|T],X) :-
    H >= K,
    maior([H|T],X),!.

maior([H,K|T],X) :-
    K > H,
    maior([K|T],X),!.

diferencaMaiorMenor([],0).
diferencaMaiorMenor(L,X) :-
    maior(L,X1), menor(L,X2),
    X is X1-X2.
% ?- diferencaMaiorMenor([100,1,31,-100],A).
% A = 200.

% ?- diferencaMaiorMenor([100,1,31,10100],A).
% A = 10099.