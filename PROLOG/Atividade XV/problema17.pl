mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

mmc(X,Y,Resultado) :-
    mdc(X,Y,R1),
    Resultado is (X*Y)/R1.
% ?- mmc(45,32,R).
% R = 1440.