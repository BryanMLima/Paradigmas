listaParaConjunto([],[]).
listaParaConjunto([H|T],[H|L]):- not(membro(H,T)), listaParaConjunto(T,L).
listaParaConjunto([H|T],L):- membro(H,T), listaParaConjunto(T,L).

lado(1).
lado(2).
lado(3).
lado(4).
lado(5).
lado(6).

resultado(0, []) :- !.
resultado(N, [H|Resto]) :-
    lado(H),
    N1 is N - 1,
    resultado(N1, Resto).

solucao(N, L) :-
    resultado(N,A),
    msort(A, L).
% ?- findall(P, solucao(2,P), Possi),
% |    sort(Possi, SemDuplicatas).
% Possi = [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 2], [2|...], [...|...]|...],
% SemDuplicatas = [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [2, 2], [2|...], [...|...]|...].