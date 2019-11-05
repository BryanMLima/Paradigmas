% Relacao de filmes
%    filme(id, titulo, ano, diretor, nacionalidade).
%
filme(f1, 'Monty Python: O Sentido da Vida', 1983, 'Terry Jones', uk).
filme(f2, 'Edukators', 2004, 'Hans Weingartner', de).
filme(f3, 'Lavoura Arcaica', 2001, 'Luiz Fernando Carvalho', br).
filme(f4, 'Lisbela e o Prisioneira', 2003, 'Guel Arraes', br).
filme(f5, 'Abril despeda�ado', 2001, 'Walter Salles', br).
filme(f6, 'Di�rios de motocicleta', 2004, 'Walter Salles', br).

% Relacao de paises
%     pais(sigla, nome).
%
pais(uk, 'Unided Kingdom').
pais(de, 'Alemanha').
pais(br, 'Brasil').

% Relacao de DVD (a caixa em si)
%     dvd(id do DVD, id do filme, estante).
%
dvd(d1, f1, est1).
dvd(d2, f2, est1).
dvd(d4, f4, est1).
dvd(d3, f3, est2).
dvd(d5, f5, est3).
dvd(d6, f1, est1).
dvd(d7, f2, est4).
dvd(d8, f2, est4).

% Relacao de clientes
%     cliente(cod, nome, telefone).
%
cliente(c1, 'Bob', '333-3112').
cliente(c2, 'Zeca', '245-1099').
cliente(c3, 'Tom', '323-0685').
cliente(c4, 'Bianca', '333-4391').
cliente(c5, 'Alice', '251-7439').
cliente(c6, 'Maria', '212-3271').

% Relacao de locacoes
%     locacao(cod cliente, nro do DVD, data de entrega)
%
locacao(c1, d1, '2005-11-07').
locacao(c1, d2, '2005-11-07').
locacao(c3, d5, '2005-11-09').
locacao(c2, d3, '2005-11-10').
locacao(c3, d3, '2005-11-11').
locacao(c4, d8, '2005-11-12').
locacao(c5, d7, '2005-11-12').
locacao(c6, d6, '2005-11-12').
locacao(c1, d5, '2005-11-13').
locacao(c1, d6, '2005-11-13').
locacao(c6, d2, '2005-11-14').
locacao(c3, d7, '2005-11-14').
locacao(c3, d8, '2005-11-14').
locacao(c5, d1, '2005-11-15').

% A)
% ?- findall(F,(filme(_,F,Ano,_,_), Ano < 2001),Filmes).
% Filmes = ['Monty Python: O Sentido da Vida'].

% B)
% ?- findall(F,(filme(_,F,Ano,_,_), Ano =< 2004, Ano >= 2001),Filmes).
% Filmes = ['Edukators', 'Lavoura Arcaica', 'Lisbela e o Prisioneira', 'Abril despeda�ado', 'Di�rios de motocicleta'].

% C)
% ?- findall(F,(filme(_,F,_,_,Pais), pais(Pais,'Brasil')),Filmes),
% |    sort(Filmes,FilmesOrdenado).
% Filmes = ['Lavoura Arcaica', 'Lisbela e o Prisioneira', 'Abril despeda�ado', 'Di�rios de motocicleta'],
% FilmesOrdenado = ['Abril despeda�ado', 'Di�rios de motocicleta', 'Lavoura Arcaica', 'Lisbela e o Prisioneira'].

% D)
% ?- findall(F,(filme(_,F,_,_,Pais), not(pais(Pais,'Brasil'))),Filmes),
% |    sort(Filmes,FilmesOrdenados).
% Filmes = ['Monty Python: O Sentido da Vida', 'Edukators'],
% FilmesOrdenados = ['Edukators', 'Monty Python: O Sentido da Vida'].

% E)
% ?- findall(F,(filme(_,F,Ano,_,Pais), Ano =< 2004,pais(Pais,'Alemanha')),Filmes).
% Filmes = ['Edukators'].

% F)
% ?- findall(DVD,(dvd(DVD,Filme,_), filme(Filme,_,_,_,Pais),not(pais(Pais,'Brasil'))),DVDS).
% DVDS = [d1, d2, d6, d7, d8].

% G)
% ?- findall(DVD,(dvd(DVD,Filme,est2), filme(Filme,_,_,_,Pais),pais(Pais,'Brasil')),DVDS).
% DVDS = [d3].

% H)
% ?- findall(Diretor, (dvd(_,Filme,est1),filme(Filme,_,_,Diretor,_)), Diretores),
% |    sort(Diretores,DiretoresOrdenado).
% Diretores = ['Terry Jones', 'Hans Weingartner', 'Guel Arraes', 'Terry Jones'],
% DiretoresOrdenado = ['Guel Arraes', 'Hans Weingartner', 'Terry Jones'].

% I)
% ?- findall(Filme, (filme(F,Filme,_,_,_), not(dvd(_,F,_))), Filmes).
% Filmes = ['Di�rios de motocicleta'].

% J)
% ?- findall(Pais, (filme(F,_,_,_,Pais), (dvd(_,F,est1); dvd(_,F,est4))), Filmes).
% Filmes = [uk, uk, de, de, de, br].

% K)
% ?- findall(Nome, (locacao(Cliente,_,'2005-11-07'), cliente(Cliente,Nome,_)), Nomes).
% Nomes = ['Bob', 'Bob'].

% L)
% ?- findall(Estante, (locacao(_,DVD,_), dvd(DVD,_,Estante)), Estantes).
% Estantes = [est1, est1, est3, est2, est2, est4, est4, est1, est3|...].

% M)
% ?- findall(Filme, (locacao(c6,DVD,_), dvd(DVD,F,_), filme(F,Filme,_,_,_)), Filmes).
% Filmes = ['Monty Python: O Sentido da Vida', 'Edukators'].

% N)

% 0)

% P)
% ?- findall(Pais,(locacao(c1, DVD, '2005-11-07'), dvd(DVD,Filme,_), filme(Filme,_,_,_,Pais)),Paises).
% Paises = [uk, de].

% Q)

% S)
% ?- findall(Filme,(locacao(c2, DVD,_),locacao(c3, DVD,_), dvd(DVD,Filme,_), filme(Filme,_,_,_,Pais)),Filmes).
% Filmes = [f3].