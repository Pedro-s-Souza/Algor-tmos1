Algoritmo "baralho simples"

Var
   n1, n2, n3 : caracter
   c1, c2, c3 : inteiro
   t1, t2, t3 : inteiro
   oc1, oc2, oc3 : inteiro
Inicio
   escreval("Digite o naipe(O, C, E, P) e o valor(De 1 a 13) das carta 1")
   leia(n1, c1)
   se (c1 <= 13) e (c1 >= 1) ent�o
      se (n1 = "o") ou (n1 = "c") ou (n1 = "e") ou (n1 = "p") ent�o
         t1 <- 0
      sen�o
         t1 <- 1
      fimse
   sen�o
      t1 <- 1
   fimse
   //Verifica��o da carta 1, Naipe na variavel n1, valor da carta na variavel c1
   //Variavel t1 para verifica��o de carta, recebe 1 se inv�lida, 0 se v�lida
   escreval("Digite o naipe(O, C, E, P) e o valor(De 1 a 13) da carta 2")
   leia(n2, c2)
   se (c2 <= 13) e (c2 >= 1) ent�o
      se (n2 = "o") ou (n2 = "c") ou (n2 = "e") ou (n2 = "p") ent�o
         t2 <- 0
      sen�o
         t2 <- 1
      fimse
   sen�o
      t2 <- 1
   fimse
   //Verifica��o da carta 2, muda apenas o numero das var�aveis para 2
   escreval("Digite o naipe(O, C, E, P) e o valor(De 1 a 13) da carta 3")
   leia(n3, c3)
   se (c3 <= 13) e (c3 >= 1) ent�o
      se (n3 = "o") ou (n3 = "c") ou (n3 = "e") ou (n3 = "p") ent�o
         t3 <- 0
      sen�o
         t3 <- 1
      fimse
   sen�o
      t3 <- 1
   fimse
   //Verifica��o da carta 3, muda apenas o numero das var�aveis para 3
   se (t1 = 1) ou (t2 = 1) ou (t3 = 1) ent�o
      //se algum for 1, uma das cartas est� fora de padr�o, ent�o o c�digo acaba.
      escreval("Baralho inv�lido!")
   sen�o
      escreval("Baralho v�lido, checando:")
      //Essa parte do c�digo serve para organizar os valores das cartas.
      //Com as variaveis OC1, 2 e 3, caso as cartas s�o inseridas fora de ordem
      se (c1 < c2) e (c1 < c3) ent�o
         oc1 <- c1
         se c2 < c3 ent�o
            oc2 <- c2
            oc3 <- c3
         sen�o
            oc2 <- c3
            oc3 <- c2
         fimse
      sen�o
         se (c2 < c1) e (c2 < c3) ent�o
            oc1 <- c2
            se c1 < c3 ent�o
               oc2 <- c1
               oc3 <- c3
            sen�o
               oc2 <- c3
               oc3 <- c1
            fimse
         sen�o
            oc1 <- c3
            se c1 < c2 ent�o
               oc2 <- c1
               oc3 <- c2
            sen�o
               oc2 <- c3
               oc3 <- c1
            fimse
         fimse
      fimse
      //Para a verifica��o dos naipes, eles precisam ser iguais
      se (n1 = n2) e (n2 = n3) e (n1 = n3) ent�o
         //No caso dos valores, fiz esse sistema, pois eles precisam formar...
         //Um Straight Flush, de apenas 3 cartas
         se (oc2 = oc1 + 1) e (oc3 = oc2 + 1) ent�o
            escreval("Voc� tem uma sequ�ncia")
         sen�o
            escreval("Voc� n�o tem uma sequ�ncia")
         fimse
      sen�o
         escreval("Voc� n�o tem uma sequ�ncia")
      fimse
   fimse
Fimalgoritmo