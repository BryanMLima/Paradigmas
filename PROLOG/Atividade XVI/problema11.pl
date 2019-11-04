concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

primeiros(_,[],[]).
primeiros(0,_,[]).
primeiros(N,[H|T],L) :-
    N =:= 0,!,
    primeiros(N-1,T,L1),
    concatena([H],L1,L),!.
% primeiros(3,[1,2,3,4,5],L).