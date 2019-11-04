mdc(X,Y,Resultado) :-
    Resto is X mod Y,
    (Resto == 0 -> Resultado is Y; mdc(Y,Resto,Resultado)).

totienteAux(_,1,0).
totienteAux(N,X,K) :-
    mdc(N,X,R),
    % mdc(N,X) =\= 1, K is K1;
    totienteAux(N,X-1,K1),
    R =:= 1, K is K1 + 1.

totienteEuler(1,0) :- !.
totienteEuler(N,K) :-
    totienteAux(N,N-1,K).