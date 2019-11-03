primo(1) :- false.
primo(N) :-
    K is 2,
    R is N mod K,
    (R == 0 -> false; primo())