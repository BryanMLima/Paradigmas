mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).
% ?- mdc(36,5,R).
% R = 1.

% ?- mdc(36,6,R).
% R = 6.

% ?- mdc(348,156,R).
% R = 12.