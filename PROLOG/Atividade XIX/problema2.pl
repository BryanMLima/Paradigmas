rainha(1).
rainha(2).
rainha(3).
rainha(4).
rainha(5).
rainha(6).
rainha(7).
rainha(8).

tabuleiro([
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0]
          ]).

oneQueen([X11, X12, X13, X14, X15, X16, X17, X18]) :-
    rainha(X11); rainha(X12); rainha(X13); rainha(X14); rainha(X15); rainha(X16); rainha(X17); rainha(X18).

solucao(S) :-
    S = tabuleiro([
            [X11, X12, X13, X14, X15, X16, X17, X18], 
            [X21, X22, X23, X24, X25, X26, X27, X28], 
            [X31, X32, X33, X34, X35, X36, X37, X38], 
            [X41, X42, X43, X44, X45, X46, X47, X48],
            [X51, X52, X53, X54, X55, X56, X57, X58], 
            [X61, X62, X63, X64, X65, X66, X67, X68], 
            [X71, X72, X73, X74, X75, X76, X77, X78], 
            [X81, X82, X83, X84, X85, X86, X87, X88]
        ]),

    %linhas
    oneQueen([X11, X12, X13, X14, X15, X16, X17, X18]),
    oneQueen([X21, X22, X23, X24, X25, X26, X27, X28]),
    oneQueen([X31, X32, X33, X34, X35, X36, X37, X38]),
    oneQueen([X41, X42, X43, X44, X45, X46, X47, X48]),
    oneQueen([X51, X52, X53, X54, X55, X56, X57, X58]),
    oneQueen([X61, X62, X63, X64, X65, X66, X67, X68]),
    oneQueen([X71, X72, X73, X74, X75, X76, X77, X78]),
    oneQueen([X81, X82, X83, X84, X85, X86, X87, X88]),

    %colunas
    oneQueen([X11, X21, X31, X41, X51, X61, X71, X81]),
    oneQueen([X12, X22, X32, X42, X52, X62, X72, X82]),
    oneQueen([X13, X23, X33, X43, X53, X63, X73, X83]),
    oneQueen([X14, X24, X34, X44, X54, X64, X74, X84]),
    oneQueen([X15, X25, X35, X45, X55, X65, X75, X85]),
    oneQueen([X16, X26, X36, X46, X56, X66, X76, X86]),
    oneQueen([X17, X27, X37, X47, X57, X67, X77, X87]),
    oneQueen([X18, X28, X38, X48, X58, X68, X78, X88]).
