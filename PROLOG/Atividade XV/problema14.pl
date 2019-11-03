operacao(Op,X,Y,Resultado) :-
    Op == +, Resultado is X+Y;
    Op == -, Resultado is X-Y;
    Op == *, Resultado is X*Y;
    Op == /, Resultado is X/Y.
% ?- operacao(+,13,3,R).
% R = 16 .

% ?- operacao(-,13,3,R).
% R = 10 .

% ?- operacao(*,13,3,R).
% R = 39 .

% ?- operacao(/,13,3,R).
% R = 4.333333333333333.