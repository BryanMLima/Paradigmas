mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

coprimos(X,Y) :-
    mdc(X,Y,R), R is 1.

totienteAux(_,1,0) :- !.
% totienteAux(_,0,0) :- !.
totienteAux(N,X,K) :-
    X1 is X - 1,
    totienteAux(N,X1,K1),
    coprimos(N,X), K is K1 + 1.

totienteEuler(1,0) :- !.
totienteEuler(N,K) :-
    totienteAux(N,N-1,K).
% totienteEuler(10,K).
