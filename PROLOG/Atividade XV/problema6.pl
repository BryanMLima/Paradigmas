potencia(_,0,1).
potencia(X,Y,Resultado) :-
    Y1 is Y-1,
    potencia(X,Y1,Resultado1),
    Resultado is Resultado1 * X.
% potencia(3,3,A) = 27