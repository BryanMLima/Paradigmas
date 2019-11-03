distancia3D(ponto(X1,Y1,Z1), ponto(X2,Y2,Z2), Dist) :-
    Dist is (sqrt((X2 - X1)^2 + (Y2 - Y1)^2 + (Z2 - Z1)^2)).
% ?- distancia3D(ponto(4,-8,-9),ponto(2,-3,-5),D).
% D = 6.708203932499369.
