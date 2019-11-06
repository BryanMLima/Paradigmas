distancia(Dist, ponto(Xa,Ya), ponto(Xb,Yb)) :-
    Dist is sqrt((Xb - Xa)^2 + (Yb - Ya)^2), !.
% ?- distancia(Dist,ponto(1,1),ponto(5,4)).
% Dist = 5.0.

colineares(ponto(X1,Y1), ponto(X2,Y2), ponto(X3,Y3)) :-
    Det is ((X1 * Y2) + (Y1 * X3) + (X2 * Y3) - (Y1 * X2) - (X1 * Y3) - (Y2 * X3)),
    Det =:= 0.
% ?- colineares(ponto(0,5), ponto(1,3), ponto(2,1)).
% true.

% ?- colineares(ponto(0,5), ponto(1,3), ponto(2,0)).
% false.

formaTriangulo(ponto(X1,Y1), ponto(X2,Y2), ponto(X3,Y3)) :-
    distancia(A,ponto(X1,Y1), ponto(X2,Y2)),
    distancia(B,ponto(X1,Y1), ponto(X3,Y3)),
    distancia(C,ponto(X3,Y3), ponto(X2,Y2)),
    abs(B - C) < A , A < B + C,
    abs(A - C) < B , B < A + C,
    abs(A - B) < C , C < B + A.
% ?- formaTriangulo(ponto(1,2),ponto(2,-2),ponto(-2,-2)).
% true.

% ?- formaTriangulo(ponto(1,2),ponto(2,-2),ponto(2,-2)).
% false.