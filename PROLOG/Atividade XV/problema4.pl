triangulo(A,B,C) :- abs(B-C) < A, A < (B+C),
                    abs(A-C) < B, B < (A+C),
                    abs(A-B) < C, C < (B+A).
% triangulo(10,5,4) = false
% triangulo(4 ,8,9) = true