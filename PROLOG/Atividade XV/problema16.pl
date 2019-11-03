mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

mdc(X,Y,Z,Resultado) :-
    mdc(X,Y,R1),
    mdc(R1,Z,R2),
    Resultado is R2.
% ?- mdc(203,91,77,R).
% R = 7.