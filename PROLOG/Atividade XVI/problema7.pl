concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

inverte([],[]).
inverte([H|T],L) :-
    inverte(T,L1),
    concatena(L1,[H],L).

igual(L,L).

palindrome(L) :-
    inverte(L,L1),
    igual(L,L1).
% ?- palindrome([1,2,3,4,3,2,1]).
% true.

% ?- palindrome([1,2,3,4,3,2,1,0]).
% false.

% ?- palindrome([1,2,3,4,4,3,2,1]).
% true.