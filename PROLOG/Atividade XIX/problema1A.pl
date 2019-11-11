passageiro(cicero).
passageiro(gustavo).
passageiro(vitor).
passageiro(william).

horario(2000).
horario(2030).
horario(2100).
horario(2130).

mala(azul).
mala(preta).
mala(verde).
mala(vermelha).

destino(bahia).
destino(mato_grosso).
destino(minas_gerais).
destino(para).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

% voo com horario H2 éh meia hora antes do que o voo com horario H1
meiaHoraAntes(voo(_,H1,_,_), voo(_,H2,_,_)) :- horario(H2), horario(H1), H2 =:= H1 - 30.

% voo com horario H2 éh meia hora depois do que o voo com horario H1
meiaHoraDepois(voo(_,H1,_,_), voo(_,H2,_,_)) :- H2 = H1 + 30.

% voo de horario H1 é antes do voo com horario H2
vooAntes(voo(_,H1,_,_), voo(_,H2,_,_)) :- H1 < H2.

% voo de horario H1 é antes do voo com horario H2
vooDepois(voo(_,H1,_,_), voo(_,H2,_,_)) :- H1 > H2.

solucao(Solucao) :-
    Solucao = [
        voo(Passageiro1, Horario1, Mala1, Destino1),
        voo(Passageiro2, Horario2, Mala2, Destino2),
        voo(Passageiro3, Horario3, Mala3, Destino3),
        voo(Passageiro4, Horario4, Mala4, Destino4)
    ],

    % william vai pra minas gerais ou eh o dono da mala preta
    (
        member(voo(william,_,_,minas_gerais), Solucao);
        member(voo(william,_,preta,_), Solucao)
    ),

    % o voo do passageiro da mochila verde eh meia hora antes que o voo do passageiro que viajara para o Para
    meiaHoraAntes(voo(_,H1,mala(verde),_), voo(_,H2,_,destino(para))),

    % cicero vai para minas gerais
    member(voo(cicero,_,_,minas_gerais), Solucao),

    % o voo com destino a minas gerais saira antes que o voo do passageiro da mochila vermelha
    % horario(H1), horario(H2), vooAntes(voo(_,H1,_,minas_gerais), voo(_,H2,vermelha,_)),

    % o voo do passageiro de mala preta eh meia hora depois que o voo para o Para
    % meiaHoraDepois(voo(_,horario(H1),mala(preta),_), voo(_,horario(H2),_,destino(para))),

    % o voo do William saira antes que o voo do passageiro da mala azul
    % vooAntes(voo(passageiro(william),horario(H1),_,_), voo(_,horario(H2),mala(azul),_)),

    % o voo do vitor saira depois que o voo para o para
    % vooDepois(voo(passageiro(vitor),horario(H1),_,_), voo(_,horario(H2),_,destino(para))),

    % Testa todas as possibilidades
    passageiro(Passageiro1), passageiro(Passageiro2), passageiro(Passageiro3), passageiro(Passageiro4),
    todosDiferentes([Passageiro1, Passageiro2, Passageiro3, Passageiro4]),
    
    horario(Horario1), horario(Horario2), horario(Horario3), horario(Horario4),
    todosDiferentes([Horario1, Horario2, Horario3, Horario4]),
    
    mala(Mala1), mala(Mala2), mala(Mala3), mala(Mala4),
    todosDiferentes([Mala1, Mala2, Mala3, Mala4]),
    
    destino(Destino1), destino(Destino2), destino(Destino3), destino(Destino4),
    todosDiferentes([Destino1, Destino2, Destino3, Destino4]).