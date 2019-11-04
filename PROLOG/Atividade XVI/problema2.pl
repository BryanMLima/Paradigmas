inserirElementoPosicao(X,0,L,[X|L]).
inserirElementoPosicao(X,P,[H|T1],[H|T2]) :-
    P1 is P - 1,
    inserirElementoPosicao(X,P1,T1,T2).
% ?- inserirElementoPosicao(98,3,[54,3,23,132,5,5346,213],L2).
% L2 = [54, 3, 23, 98, 132, 5, 5346, 213] ;