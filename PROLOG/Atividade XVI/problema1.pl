posicao2(X,[X|_],0).
posicao2(X,[_|T],P) :-
    posicao2(X,T,P1),
    P is P1+1.

posicao(X,L,P) :-
    posicao2(X,L,P).
% ?- posicao(2,[1,4,5,67,4,3,2,123,1,2],P).
% P = 6 ;
% P = 9 ;