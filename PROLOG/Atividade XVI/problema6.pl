menor([],0).
menor([X],X).
menor([H,K|T],X) :-
    H =< K,
    menor([H|T],X),!.

menor([H,K|T],X) :-
    K < H,
    menor([K|T],X),!.
% ?- menor([1029301,2,3,4,1],A).
% A = 1.

% ?- menor([1029301,-2,3,4,1],A).
% A = -2.

% ?- menor([1029301,-2,3,-4,1],A).
% A = -4.