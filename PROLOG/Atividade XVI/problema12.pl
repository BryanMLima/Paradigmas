apagar(0,L,L) :- !.
apagar(1,[_|T],T) :- !.
% apagar()
apagar(N,[_|T],L) :-
    N1 is N - 1,
    apagar(N1,T,L),!.
% ?- apagar(3,[1,2,3,4,5,6],L).
% L = [4, 5, 6].

% ?- apagar(0,[1,2,3,4,5,6],L).
% L = [1, 2, 3, 4, 5, 6].

% ?- apagar(6,[1,2,3,4,5,6],L).
% L = [].