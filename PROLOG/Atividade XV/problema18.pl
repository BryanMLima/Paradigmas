mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

coprimos(X,Y) :-
    mdc(X,Y,R), R is 1.
% ?- coprimos(15,14).
% true.

% ?- coprimos(15,5).
% false.
