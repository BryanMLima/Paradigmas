remover(X,[],[]).
remover(X,[X|T],T2) :- remover(X, T, T2).
remover(X,[H|T],[H|T2]) :- X \== H, remover(X, T, T2).

diferenca([],_,[]) :- !.
diferenca(S1,[],S1) :- !.
diferenca(S1,[H|T],S3) :-
    remover(H,S1,A),
    diferenca(A,T,S3),!.
% ?- diferenca([1,2,3,4],[1,2],S3).
% S3 = [3, 4].

% ?- diferenca([1,2],[1,2,3,4],S3).
% S3 = [].