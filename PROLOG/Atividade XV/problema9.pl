xor(X,Y) :- ((X;Y) , not((X,Y))).
% xor(true,false) = true
% xor(true,true) = false