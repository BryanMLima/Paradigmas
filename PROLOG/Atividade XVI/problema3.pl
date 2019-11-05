numerosParaPalavras([],[]).
numerosParaPalavras([0|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Zero"|L22].
numerosParaPalavras([1|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Um"|L22].
numerosParaPalavras([2|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Dois"|L22].
numerosParaPalavras([3|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Tres"|L22].
numerosParaPalavras([4|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Quatro"|L22].
numerosParaPalavras([5|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Cinco"|L22].
numerosParaPalavras([6|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Seis"|L22].
numerosParaPalavras([7|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Sete"|L22].
numerosParaPalavras([8|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Oito"|L22].
numerosParaPalavras([9|T],L2) :- numerosParaPalavras(T,L22), L2 = ["Nove"|L22].
% ?- numerosParaPalavras([0,1,2,3,4,5,6,9],L).
% L = ["Zero", "Um", "Dois", "Tres", "Quatro", "Cinco", "Seis", "Nove"].