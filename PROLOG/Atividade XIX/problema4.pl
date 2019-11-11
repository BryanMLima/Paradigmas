lado(1).
lado(2).
lado(3).
lado(4).
lado(5).
lado(6).

soma([],0).
soma([H|T],X) :-
    soma(T,X1),
    X is H + X1.

resultado(0, []) :- !.
resultado(N, [H|Resto]) :-
    lado(H),
    N1 is N - 1,
    resultado(N1, Resto).
    
solucao(N, X, L) :-
    resultado(N,A),
    msort(A, L),
    soma(L,X).
% ?- findall(P, solucao(2,8,P), Possibilidades),
% |    sort(Possibilidades, SemDuplicatas).
% Possibilidades = [[2, 6], [3, 5], [4, 4], [3, 5], [2, 6]],
% SemDuplicatas = [[2, 6], [3, 5], [4, 4]].