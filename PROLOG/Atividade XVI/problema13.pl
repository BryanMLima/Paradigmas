concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

dividir([H],[H],[]) :- !.
dividir([H,K],[H],[K]) :- !.
dividir([H,K|T],L2,L3) :-
    concatena([H],A2,L2),
    concatena([K],B3,L3),
    dividir(T,A2,B3).
% ?- dividir([1,2,3,4,5,6],L1,L2).
% L1 = [1, 3, 5],
% L2 = [2, 4, 6].

% ?- dividir([1,2,3,4,5],L1,L2).
% L1 = [1, 3, 5],
% L2 = [2, 4].