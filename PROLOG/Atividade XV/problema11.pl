:- initialization(main).
fib(0,0).
fib(1,1).
fib(N,K) :-
    N1 is N - 1,
    N2 is N1 - 1,
    fib(N1,K1),
    fib(N2,K2),
    K is K1 + K2.

main :- write('Informe o termo desejado '),
        read(N),
        fib(N,K),
        writeln(K),
        halt.
% Informe o termo desejado 18.
% 2584