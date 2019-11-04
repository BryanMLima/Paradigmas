concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

primeiros(_,[],[]) :- !.
primeiros(0,_,[]) :- !.
primeiros(N,[H|T],L) :-
    N1 is N - 1,
    primeiros(N1,T,L1),
    concatena([H],L1,L).
% ?- primeiros(3,[1,2,3,4,5],L).
% L = [1, 2, 3].

% ?- primeiros(1,[1,2,3,4,5],L).
% L = [1].

% ?- primeiros(2,[1,2,3,4,5],L).
% L = [1, 2].