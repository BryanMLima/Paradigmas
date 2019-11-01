eqSegundoGrau(A,B,C,ValorX) :- ValorX is ((-B + sqrt(B^2 - 4*A*C))/(2*A));
                               ValorX is ((-B - sqrt(B^2 - 4*A*C))/(2*A)).
% eqSegundoGrau(1,12,-13,X) = X = 1; X = -13.
                            
