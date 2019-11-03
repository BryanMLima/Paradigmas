maior(A,B,C,X) :-
    A > B,
    A > C,
    X is A.
% maior(1,2,3,X).
% X = 3.

maior(A,B,C,X) :-
    B > A,
    B > C,
    X is B.
% maior(1,5,3,X).
% X = 5 ;

maior(A,B,C,X) :-
    C > B,
    C > A,
    X is C.
% ?- maior(91,5,3,X).
% X = 91 ;