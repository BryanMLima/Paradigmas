concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

inverte([],[]).
inverte([H|T],L) :-
    inverte(T,L1),
    concatena(L1,[H],L).
% ?- inverte([1,2],A).
% A = [2, 1].

% ?- inverte([1,2,123,123,35564567,8],A).
% A = [8, 35564567, 123, 123, 2, 1].