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

    % o voo do passageiro da mochila verde eh meia hora antes que o voo do passageiro que viajara para o bahia
    member(voo(_,H1,verde,_), Solucao), member(voo(_,H2,_,bahia), Solucao), horario(H1), horario(H2), H1 =:= H2 - 30,

    % cicero vai para minas gerais
    member(voo(cicero,_,_,minas_gerais), Solucao),

    % o voo com destino a minas gerais saira antes que o voo do passageiro da mochila vermelha
    member(voo(_,H3,_,minas_gerais), Solucao), member(voo(_,H4,vermelha,_), Solucao), horario(H3), horario(H4), H3 < H4,

    % % % o voo do passageiro de mala preta eh meia hora depois que o voo para o Para
    member(voo(_,H5,preta,_), Solucao), member(voo(_,H6,_,para), Solucao), horario(H5), horario(H6), H6 =:= H5 - 30,

    % % % o voo do William saira antes que o voo do passageiro da mala azul
    member(voo(william,H7,_,_), Solucao), member(voo(_,H8,azul,_), Solucao), horario(H7), horario(H8), H7 < H8,

    % % % o voo do vitor saira depois que o voo para o para
    member(voo(vitor,H9,_,_), Solucao), member(voo(_,H10,_,para), Solucao), horario(H9), horario(H10), H9 > H10,

    % Testa todas as possibilidades
    passageiro(Passageiro1), passageiro(Passageiro2), passageiro(Passageiro3), passageiro(Passageiro4),
    todosDiferentes([Passageiro1, Passageiro2, Passageiro3, Passageiro4]),
    
    horario(Horario1), horario(Horario2), horario(Horario3), horario(Horario4),
    todosDiferentes([Horario1, Horario2, Horario3, Horario4]),
    
    mala(Mala1), mala(Mala2), mala(Mala3), mala(Mala4),
    todosDiferentes([Mala1, Mala2, Mala3, Mala4]),
    
    destino(Destino1), destino(Destino2), destino(Destino3), destino(Destino4),
    todosDiferentes([Destino1, Destino2, Destino3, Destino4]).