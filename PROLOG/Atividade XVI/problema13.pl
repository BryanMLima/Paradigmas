concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

% comprimento([],0).
% comprimento([H|T],C) :-
%     comprimento(T,C1),
%     C is C1 + 1.

dividir_par([],[],_) :- !.
dividir_par([H|T],L1,L2) :-
    concatena([H],L1,L1),
    dividir_impar(T,L1,L2).

dividir_impar([_],_,[]) :- !.
dividir_impar([H|T],L1,L2) :-
    concatena([H],L2,L2),
    dividir_impar(T,L1,L2).