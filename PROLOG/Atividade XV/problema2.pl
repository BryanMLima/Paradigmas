disciplina(ine0123).
disciplina(ine9999).
disciplina(ine1111).

estudante(bob).
nota(bob, 7).
estudante(james).
nota(james, 9).
estudante(heath).
estudante(roth).

estuda(james, ine0123).
estuda(bob, ine0123).
estuda(bob, ine9999).
estuda(roth, ine1111).
estuda(bob, ine1111).

professor(jim).
% leciona(jim,A) = ine0123, ine1111.
leciona(jim, ine0123).
leciona(jim, ine1111).

ensina(Prof,Alun) :- leciona(Prof, B), estuda(Alun, B).
% ensina(jim,X) = james, bob, roth.
colegas(A,B) :- estuda(A,X), estuda(B,X), A \== B.
% colegas(bob,A) = james, roth.
% colegas(james,roth) = false
passou(nota(A, N)) :- N >= 6.
% passou(nota(bob,7)) = true