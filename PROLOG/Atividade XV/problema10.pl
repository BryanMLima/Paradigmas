aprovado(A,B,C) :- ((A + B + C)/3) >= 6, writeln('aprovado').
aprovado(A,B,C) :- ((A + B + C)/3) < 6, writeln('reprovado').
% aprovado(5,4,3) = reprovado
% aprovado(7,5,9) = aprovado