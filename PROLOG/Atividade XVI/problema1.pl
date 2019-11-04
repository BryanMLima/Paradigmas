posicao2(X,[X|_],0).
posicao2(X,[_|T],P) :-
    posicao2(X,T,P1),
    P is P1+1.

posicao(X,L,P) :-
    posicao2(X,L,P).