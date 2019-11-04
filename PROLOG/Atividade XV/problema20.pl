auxPrimo(N,K) :-
    (
        N =:= 1 -> false,!;
        K > N/2 -> true,!;
        N mod K =:= 0 -> false,!;
        auxPrimo(N,K+1)
    ).

primo(N) :-
    K is 2,
    auxPrimo(N,K).
% ?- primo(1).
% false.

% ?- primo(2).
% true.

% ?- primo(3).
% true.

% ?- primo(4).
% false.

% ?- primo(29).
% true.