membro(X,[X|_]).
membro(X,[_|T]) :- membro(X,T).

listaParaConjunto([],[]).
listaParaConjunto([H|T],[H|L]) :-
    not(membro(H,T)), listaParaConjunto(T,L).
listaParaConjunto([H|T],L) :- 
    membro(H,T), listaParaConjunto(T,L).

concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

uniao(S1,S2,S3,S4) :-
    concatena(S1,S2,A),
    concatena(A,S3,B),
    listaParaConjunto(B,S4),!.
% ?- uniao([1,2,3,4],[1,2,5,6],[99,823,23],S4).
% S4 = [3, 4, 1, 2, 5, 6, 99, 823, 23].
remover(X,[],[]).
remover(X,[X|T],T2) :- remover(X, T, T2).
remover(X,[H|T],[H|T2]) :- X \== H, remover(X, T, T2).

diferenca([],_,[]) :- !.
diferenca(S1,[],S1) :- !.
diferenca(S1,[H|T],S3) :-
    remover(H,S1,A),
    diferenca(A,T,S3),!.

diferenca_3(S1,S2,S3,S4) :-
    diferenca(S1,S2,A),
    diferenca(A,S3,S4).
% ?- diferenca_3([1,2,3,4,198],[1,2],[98,32],S4).
% S4 = [3, 4, 198].

% ?- diferenca_3([1,2,3,4,198,32,86],[1,2],[98,32],S4).
% S4 = [3, 4, 198, 86].
intersecao([],_,[]).
intersecao([H|T],S,[H|R]) :- membro(H,S), intersecao(T,S,R).
intersecao([H|T],S,R) :- not(membro(H,S)), intersecao(T,S,R).

intersecao_3(S1,S2,S3,S4) :-
    intersecao(S1,S2,A),
    intersecao(A,S3,S4),!.
% ?- intersecao_3([1,2,3,4,198,32,86],[1,2,32],[98,32],S4).
% S4 = [32].

% ?- intersecao_3([1,2,3,4,198,32,86],[198,1,2,32],[98,32,198],S4).
% S4 = [198, 32].