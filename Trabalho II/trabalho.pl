cor(amarelo).
cor(azul).
cor(branco).
cor(verde).
cor(vermelho).

motorista(antonio).
motorista(bino).
motorista(jorge).
motorista(pedro).
motorista(stenio).

destino(amazonas).
destino(bahia).
destino(mato_grosso).
destino(minas_gerais).
destino(parana).

carga(adubo).
carga(carvao).
carga(enxofre).
carga(soda_caustica).
carga(trigo).

placa('AAA-1111').
placa('BBB-2222').
placa('CCC-3333').
placa('DDD-4444').
placa('EEE-5555').

km(50000).
km(100000).
km(150000).
km(200000).
km(250000).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

%X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).

%X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.

%X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista).

%X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

solucao(Solucao) :-
    Solucao =
    [
        caminhao(cor(Cor1), motorista(Motorista1), destino(Destino1), carga(Carga1), placa(Placa1), km(Km1)),
        caminhao(cor(Cor2), motorista(Motorista2), destino(Destino2), carga(Carga2), placa(Placa2), km(Km2)),
        caminhao(cor(Cor3), motorista(Motorista3), destino(Destino3), carga(Carga3), placa(Placa3), km(Km3)),
        caminhao(cor(Cor4), motorista(Motorista4), destino(Destino4), carga(Carga4), placa(Placa4), km(Km4)),
        caminhao(cor(Cor5), motorista(Motorista5), destino(Destino5), carga(Carga5), placa(Placa5), km(Km5))
    ],

    % Jorge é o motorista do caminhão de placa DDD-4444.
    member(caminhao(_,motorista(jorge),_,_,placa('DDD-4444'),_), Solucao),

    % Na quarta posição está o caminhão que vai para Belo Horizonte.
    Destino4 = minas_gerais,

    % O caminhão menos rodado está transportando Carvão.
    member(caminhao(_,_,_,carga(carvao),_,km(50000)), Solucao),

    % O caminhão Vermelho está em algum lugar à esquerda do caminhão que vai para o Amazonas.
    aEsquerda(caminhao(cor(vermelho),_,_,_,_,_), caminhao(_,_,destino(amazonas),_,_,_), Solucao),

    % O veículo que vai para a região Centro-oeste está ao lado do caminhão que já rodou 100 mil Km.
    (
        aoLado(caminhao(_,_,destino(mato_grosso),_,_,_), caminhao(_,_,_,_,_,km(100000)), Solucao);
        aoLado(caminhao(_,_,destino(mato_grosso),_,_,_), caminhao(_,_,_,_,_,km(150000)), Solucao);
        aoLado(caminhao(_,_,destino(mato_grosso),_,_,_), caminhao(_,_,_,_,_,km(200000)), Solucao);
        aoLado(caminhao(_,_,destino(mato_grosso),_,_,_), caminhao(_,_,_,_,_,km(250000)), Solucao)
    ),


    % O caminhão Vermelho está em algum lugar entre o caminhão que está carregando Enxofre e o caminhão Azul, nessa ordem.
    aDireita(caminhao(cor(azul),_,_,_,_,_), caminhao(cor(vermelho),_,_,_,_,_), Solucao),
    aEsquerda(caminhao(_,_,_,carga(enxofre),_,_), caminhao(cor(vermelho),_,_,_,_,_), Solucao),

    % Na primeira posição está o caminhão que tem 150 mil Km rodados.
    Km1 = 150000,

    % Em uma das pontas está o caminhão de placa AAA-1111.
    noCanto(caminhao(_,_,_,_,placa('AAA-1111'),_), Solucao),

    % O caminhão de placa DDD-4444 está transportando Soda cáustica.
    member(caminhao(_,_,_,carga(soda_caustica),placa('DDD-4444'),_), Solucao),

    % O caminhão Branco está em algum lugar à direita do caminhão Verde.
    aDireita(caminhao(cor(branco),_,_,_,_,_), caminhao(cor(verde),_,_,_,_,_), Solucao),

    % O veículo de placa BBB-2222 está ao lado do veículo mais rodado.
    aoLado(caminhao(_,_,_,_,placa('BBB-2222'),_), caminhao(_,_,_,_,_,km(250000)), Solucao),

    % Quem vai para a região Nordeste está em algum lugar à direita do caminhão Vermelho.
    aDireita(caminhao(_,_,destino(bahia),_,_,_), caminhao(cor(vermelho),_,_,_,_,_), Solucao),

    % O caminhão Amarelo está exatamente à esquerda do caminhão que tem 200 mil Km rodados.
    aoLado(caminhao(cor(amarelo),_,_,_,_,_), caminhao(_,_,_,_,_,km(200000)), Solucao),
    aEsquerda(caminhao(cor(amarelo),_,_,_,_,_), caminhao(_,_,_,_,_,km(200000)), Solucao),

    % O veículo de placa CCC-3333 está exatamente à direita do veículo de placa DDD-4444.
    aoLado(caminhao(_,_,_,_,placa('CCC-3333'),_), caminhao(_,_,_,_,placa('DDD-4444'),_), Solucao),
    aDireita(caminhao(_,_,_,_,placa('CCC-3333'),_), caminhao(_,_,_,_,placa('DDD-4444'),_), Solucao),

    % Stênio está dirigindo para Minas Gerais.
    member(caminhao(_,motorista(stenio),destino(minas_gerais),_,_,_), Solucao),

    % O caminhão com Adubo está em algum lugar entre o caminhão que vai para Bahia e o caminhão com Carvão, nessa ordem.
    aDireita(caminhao(_,_,_,carga(carvao),_,_), caminhao(_,_,_,carga(adubo),_,_), Solucao),
    aEsquerda(caminhao(_,_,destino(bahia),_,_,_), caminhao(_,_,_,carga(adubo),_,_), Solucao),

    % O veículo Azul está em algum lugar à direita do veículo de placa AAA-1111.
    aDireita(caminhao(cor(azul),_,_,_,_,_), caminhao(_,_,_,_,placa('AAA-1111'),_), Solucao),

    % O caminhão de placa DDD-4444 está ao lado do caminhão que já rodou 100 mil Km.
    aoLado(caminhao(_,_,_,_,placa('DDD-4444'),_), caminhao(_,_,_,_,_,km(100000)), Solucao),

    % Antônio é o motorista do caminhão de placa EEE-5555.
    member(caminhao(_,motorista(antonio),_,_,placa('EEE-5555'),_), Solucao),

    % O caminhão Azul está em algum lugar à esquerda do caminhão Branco.
    aEsquerda(caminhao(cor(azul),_,_,_,_,_), caminhao(cor(branco),_,_,_,_,_), Solucao),

    % Pedro está ao lado do caminhão que vai para o Mato Grosso.
    aoLado(caminhao(_,motorista(pedro),_,_,_,_), caminhao(_,_,destino(mato_grosso),_,_,_), Solucao),

    % Em uma das pontas está o caminhão de placa EEE-5555.
    noCanto(caminhao(_,_,_,_,placa('EEE-5555'),_), Solucao),

    % Testa todas as possibilidades
    cor(Cor1), cor(Cor2), cor(Cor3), cor(Cor4), cor(Cor5),
    todosDiferentes([Cor1, Cor2, Cor3, Cor4, Cor5]),

    motorista(Motorista1), motorista(Motorista2), motorista(Motorista3), motorista(Motorista4), motorista(Motorista5),
    todosDiferentes([Motorista1, Motorista2, Motorista3, Motorista4, Motorista5]),

    destino(Destino1), destino(Destino2), destino(Destino3), destino(Destino4), destino(Destino5),
    todosDiferentes([Destino1, Destino2, Destino3, Destino4, Destino5]),

    carga(Carga1), carga(Carga2), carga(Carga3), carga(Carga4), carga(Carga5),
    todosDiferentes([Carga1, Carga2, Carga3, Carga4, Carga5]),

    placa(Placa1), placa(Placa2), placa(Placa3), placa(Placa4), placa(Placa5),
    todosDiferentes([Placa1, Placa2, Placa3, Placa4, Placa5]),

    km(Km1), km(Km2), km(Km3), km(Km4), km(Km5),
    todosDiferentes([Km1, Km2, Km3, Km4, Km5]).