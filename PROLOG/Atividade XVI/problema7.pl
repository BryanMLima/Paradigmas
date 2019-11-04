ultimo([X],X).
ultimo([H,H2|T], X) :- ultimo([H2|T],X).

palindrome([H|T]) :-

