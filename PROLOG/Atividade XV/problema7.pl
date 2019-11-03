absoluto(N,X) :- N < 0, X is (-N);N >= 0, X is N.
% absoluto(-10,X) = 10