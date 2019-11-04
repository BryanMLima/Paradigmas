ocorrencias([],_,0).
ocorrencias([H|T],X,N) :-
    (
        X =:= H ->
        ocorrencias(T,X,N1),
        N is N1 + 1
        ;
        X =\= H ->
        ocorrencias(T,X,N)
    ).
% ?- ocorrencias([1,2,3,1,2,1,2,1,2,1,2],3,A).
% A = 1.

% ?- ocorrencias([1,2,3,1,2,1,2,1,2,1,2],2,A).
% A = 5.