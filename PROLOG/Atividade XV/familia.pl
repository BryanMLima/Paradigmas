genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).

genitor(bob, ana).
genitor(bob, pat).

genitor(liz,bill).
genitor(liz,heather).

genitor(pat, jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).
mulher(heather).
homem(tom).
homem(bob).
homem(jim).
homem(bill).

pai(X,Y) :- genitor(X,Y), homem(X).
mae(X,Y) :- genitor(X,Y), mulher(X).
% Verifica se é mãe ou pai de Y
pais(X,Y) :- (pai(X,Y); mae(X,Y)).
% pais(X,bob) = X = tom; X = pam.


avo(AvoX, X) :- genitor(GenitorX, X), genitor(AvoX, GenitorX), homem(AvoX).
avoh(AvohX, X) :- genitor(GenitorX, X), genitor(AvohX, GenitorX), mulher(AvohX).
avos(X,Y) :- (avo(X,Y); avoh(X,Y)).
irmao(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, homem(X).
irma(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, mulher(X).
irmaos(X,Y) :- (irmao(X,Y); irma(X,Y)), X \== Y.

tio(TioX,X) :- irmaos(GenitorX, TioX), genitor(GenitorX, X), homem(TioX).
% tio(X,bill) = bob
tia(TioX,X) :- irmaos(GenitorX, TioX), genitor(GenitorX, X), mulher(TioX).
% tia(X,ana) = liz
primo(PrimoX,X) :- pais(PaisPrimoX, PrimoX), pais(PaisX, X), irmaos(PaisPrimoX, PaisX), homem(PrimoX).
% primo(X,ana) = bill
prima(PrimoX,X) :- pais(PaisPrimoX, PrimoX), pais(PaisX, X), irmaos(PaisPrimoX, PaisX), mulher(PrimoX).
% prima(X,bill) = ana
primos(X,Y) :- (prima(X,Y); primo(X,Y)).
% primos(X,ana) = heather; bill.
bisavo(BisavoX, X) :- pai(BisavoX, AvosX), avos(AvosX, X).
% bisavo(X,jim) = tom
bisavoh(BisavoX, X) :- mae(BisavoX, AvosX), avos(AvosX, X).
% bisavo(X,jim) = pam

descendente(X,Y) :- genitor(Y,X).
descendente(X,Y) :- genitor(Z, X), descendente(Z, Y).
% descendente(X,pam) = bob,ana,pat,jim

feliz(X) :- genitor(X,_).
% feliz(bob) = true

ascendente(X,Y) :- genitor(X,Y). %recursão - caso base
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y). %recursão - passo recursivo
