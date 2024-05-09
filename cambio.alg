Algoritmo "cambio"

Var
   valor : real
   moeda : caracter
   opc : caracter
   calc: real


Inicio
     escreval("O que deseja fazer hoje?")
     escreval("Para cotacao, digite 1")
     escreval("Para converter moeda estrangeira em real, digite 2")
     escreval("Para converter real em outra moeda, digite 3")
     leia(opc)
     escolha opc
        caso "1"
             escreval("Digite o nome da moeda")
             escreval("Digite 1 para Euro, 2 para dolar, 3 para libra;")
             escreval("4 para rublo e 5 para iene")
             leia(moeda)
             escolha moeda
                caso "1"
                     escreval("1 euro custa 5,12 reais.")
                caso "2"
                     escreval("1 dolar custa 5,16 reais.")
                caso "3"
                     escreval("1 libra custa 5,93 reais.")
                caso "4"
                     escreval("1 rublo custa 0,084 reais.")
                caso "5"
                     escreval("1 iene custa 0,037 reais.")
                outrocaso
                     escreval("moeda indisponivel para compra")
             fimescolha
        caso "2"
               escreval("Digite o nome da moeda e quanto possui")
               escreval("Digite 1 para Euro, 2 para dolar, 3 para libra;")
               escreval("4 para rublo e 5 para iene")
               leia(moeda)
               leia(valor)
             escolha moeda
                caso "1"
                     calc <- valor * 5.12
                     escreval("Esse valor sera convertido em:", calc, "reais.")
                caso "2"
                     calc <- valor * 5.16
                     escreval("Esse valor sera convertido em:", calc, "reais.")
                caso "3"
                     calc <- valor * 5.93
                     escreval("Esse valor sera convertido em:", calc, "reais.")
                caso "4"
                     calc <- valor / 0.084
                     escreval("Esse valor sera convertido em:", calc, "reais.")
                caso "5"
                     calc <- valor / 0.037
                     escreval("Esse valor sera convertido em:", calc, "reais.")
                outrocaso
                     escreval("moeda nao aceita")
             fimescolha
          caso "3"
               escreval("Digite o nome da moeda que deseja cambiar para e quantos reais possui")
               escreval("Digite 1 para Euro, 2 para dolar, 3 para libra;")
               escreval("4 para rublo e 5 para iene")
               leia(moeda)
               leia(valor)
             escolha moeda
                caso "1"
                     calc <- valor / 5.12
                     escreval("Esse valor sera convertido em:", calc, "euros.")
                caso "2"
                     calc <- valor / 5.16
                     escreval("Esse valor sera convertido em:", calc, "dolares.")
                caso "3"
                     calc <- valor / 5.93
                     escreval("Esse valor sera convertido em:", calc, "libras.")
                caso "4"
                     calc <- valor * 0.084
                     escreval("Esse valor sera convertido em:", calc, "rublos.")
                caso "5"
                     calc <- valor * 0.037
                     escreval("Esse valor sera convertido em:", calc, "ienes.")
                outrocaso
                     escreval("moeda indisponivel para cambio")
             fimescolha
          outrocaso
                   escreval("opcao invalida")
          fimescolha



Fimalgoritmo