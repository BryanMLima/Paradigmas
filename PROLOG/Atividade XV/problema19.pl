mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

totienteEuler(1,1).
totienteEuler(N,K) :-
    N1 is N - 1,
    