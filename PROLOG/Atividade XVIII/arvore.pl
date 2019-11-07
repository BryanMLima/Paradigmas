no(52, 
    no(32,
        no(12,nil,nil),
        no(35,nil,nil)), 
    no(56,
        no(55,
            no(55,nil,nil),
            nil),
        no(64,nil,nil))).
        
soma(nil, 0).
soma(no(N, ArvE, ArvD),Soma) :-
    soma(ArvE,SomaEsq),
    soma(ArvD,SomaDir),
    Soma is N + SomaEsq + SomaDir.
    
membro(N, no(N, _, _)) :- !.
membro(N, no(_, ArvE, ArvD)) :-
    membro(N, ArvE), !;
    membro(N, ArvD).
    
min(X,Y,X) :- X =< Y, !.
min(X,Y,Y).

minimo(nil,1000). %INF = 1000
minimo(no(N, ArvE, ArvD),Min) :-
    minimo(ArvE, MinE),
    minimo(ArvD, MinD),
    min(MinE, MinD, MinED),
    min(N, MinED, Min).
    
caminho(Y, no(Y, _, _), [Y]) :- !.
caminho(Y, no(K, ArvE, ArvD), [K|Caminho]) :-
    caminho(Y, ArvE, Caminho), !;
    caminho(Y, ArvD, Caminho).

ocorrencias(_, nil, 0) :- !.
ocorrencias(X, no(K,Esq,Dir), N) :-
    ocorrencias(X, Esq, NEsq),
    ocorrencias(X, Dir, NDir),
    (
        X == K -> N is NDir + NEsq + 1;
        N is NDir + NEsq
    ).
% ?- no(X,E,D), ocorrencias(56,no(X,E,D),N).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% N = 1.

% ?- no(X,E,D), ocorrencias(55,no(X,E,D),N).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% N = 2.
elemMaioresQueX(_,nil,0) :- !.
elemMaioresQueX(X, no(K, Esq, Dir), N) :-
    elemMaioresQueX(X, Esq, NEsq),
    elemMaioresQueX(X, Dir, NDir),
    (
        X < K -> N is NDir + NEsq + 1;
        N is NDir + NEsq
    ).
% ?- no(X,E,D), elemMaioresQueX(56,no(X,E,D),N).?- no(X,E,D), elemMaioresQueX(12,no(X,E,D),N).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% N = 7.
numeroElem(nil, 0) :- !.
numeroElem(no(_, Esq, Dir), N) :-
    numeroElem(Esq, NEsq),
    numeroElem(Dir, NDir),
    N is NEsq + NDir + 1.
% ?- no(X,E,D), numeroElem(no(X,E,D),Elem).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% Elem = 8.
media(nil,0) :- !.
media(Arv,Media) :-
    soma(Arv,Soma),
    numeroElem(Arv,N),
    Media is Soma/N.
% ?- no(X,E,D), media(no(X,E,D),Media).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% Media = 45.125.
concatena([],L,L).
concatena([H|T],L2,[H|LConcatenada]) :- concatena(T,L2,LConcatenada).

arvoreParaLista(nil,[]) :- !.
arvoreParaLista(no(N,Esq,Dir),[N|Resto]) :-
    arvoreParaLista(Esq,EsqResto),
    arvoreParaLista(Dir,DirResto),
    concatena(EsqResto,DirResto,Resto).
% ?- no(X,E,D), arvoreParaLista(no(X,E,D),L).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% L = [52, 32, 12, 35, 56, 55, 55, 64].
elemNaoEstaNaArvore(_,nil).
elemNaoEstaNaArvore(Elem,Arv) :-
    not(membro(Elem,Arv)).
% ?- no(X,E,D), elemNaoEstaNaArvore(102,no(X,E,D)).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)).
% ?- no(X,E,D), elemNaoEstaNaArvore(64,no(X,E,D)).
% false.
posOrdem(nil,[]) :- !.
posOrdem(no(N,Esq,Dir),Lista) :-
    posOrdem(Esq,L1),
    posOrdem(Dir,L2),
    concatena(L1,L2,L3),
    concatena(L3,[N],Lista).
% ?- no(X,E,D), posOrdem(no(X,E,D),L).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% L = [12, 35, 32, 55, 55, 64, 56, 52].
preOrdem(nil,[]) :- !.
preOrdem(no(N,Esq,Dir),Lista) :-
    preOrdem(Esq,L1),
    preOrdem(Dir,L2),
    concatena([N],L1,L3),
    concatena(L3,L2,Lista).
% ?- no(X,E,D), preOrdem(no(X,E,D),L).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% L = [52, 32, 12, 35, 56, 55, 55, 64].
emOrdem(nil,[]) :- !.
emOrdem(no(N,Esq,Dir),Lista) :-
    emOrdem(Esq,L1),
    emOrdem(Dir,L2),
    concatena(L1,[N],L3),
    concatena(L3,L2,Lista).
% ?- no(X,E,D), emOrdem(no(X,E,D),L).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% L = [12, 32, 35, 52, 55, 55, 56, 64].
qntFolhas(nil,0) :- !.
qntFolhas(no(_,nil,nil),1) :- !.
qntFolhas(no(_,Esq,Dir),N) :-
    qntFolhas(Esq,N1),
    qntFolhas(Dir,N2),
    N is N1 + N2.
% ?- no(X,E,D), qntFolhas(no(X,E,D),N).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% N = 4.
listaFolhas(nil,[]) :- !.
listaFolhas(no(N,nil,nil),[N]) :- !.
listaFolhas(no(_,Esq,Dir),L1) :-
    listaFolhas(Esq,L2),
    listaFolhas(Dir,L3),
    concatena(L2,L3,L1).
% ?- no(X,E,D), listaFolhas(no(X,E,D),N).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% N = [12, 35, 55, 64].
arvoresIguais(nil,nil,true).
arvoresIguais(no(N,Esq1,Dir1),no(N,Esq2,Dir2),Iguais) :-
    arvoresIguais(Esq1,Esq2,Iguais),
    arvoresIguais(Dir1,Dir2,Iguais),!.
% ?- no(X,E,D), arvoresIguais(no(X,E,D),no(X,E,D),I).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% I = true.

% ?- no(X,E,D), arvoresIguais(no(X,E,D),nil,I).
% false.
max(X,Y,M) :- X >= Y, M = X, !;
    M = Y.

altura(nil,0) :- !.
altura(no(_,nil,nil),0):- !.
altura(no(_,Esq,Dir),H) :-
    altura(Esq,H1),
    altura(Dir,H2), 
    max(H1,H2,H3), H is H3 + 1.
% ?- no(X,E,D), altura(no(X,E,D),H).
% X = 52,
% E = no(32, no(12, nil, nil), no(35, nil, nil)),
% D = no(56, no(55, no(55, nil, nil), nil), no(64, nil, nil)),
% H = 3.
caminhoXParaY(X, Y, no(Y, _, _), [Y]) :- !.
caminhoXParaY(X, Y, no(K, Esq, Dir), [K|Caminho]) :-
    caminhoXParaY(K,Y,Esq,Caminho), !;
    caminhoXParaY(K,Y,Dir,Caminho).
% no(X,E,D), caminhoXParaY(52,64,no(X,E,D),L).