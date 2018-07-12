algoritmo "semnome"

var

p1,p2,letra:caractere
jogs:vetor[1..3,1..3] de caractere
col,row,j:inteiro

inicio
   escreval ("=====================")
   escreval ("|   JOGO DA VELHA   |")
   escreval ("+------+-----+------+")
escreval()

escreval()
escreval("Primeiro jogador: ")
escreva("Nome: ")
leia(p1)
escreval()
escreval("Segundo jogador: ")
escreva("Nome: ")
leia(p2)
escreval()

escreval("Escolha x/o: ")
leia(letra)

repita letra <> "x" ou "o"
       se letra = "x" entao
                         escreval("Jogador ",p1," vai ficar com x !")
                         escreval("Jogador ",p2," vai ficar com o !")
          interrompa
       senao
       se letra = "o" entao
                         escreval("Jogador ",p1," vai ficar com o !")
                         escreval("Jogador ",p2," vai ficar com x !")
          interrompa
          fimse
       fimse
       escreval("Invalido")
       leia(letra)
fimrepita
escreval()

para row de 1 ate 3 faca
     para col de 1 ate 3 faca
         leia(jogs[row,col])
         jogs[1,1] <- letra
         jogs[1,2] <- letra
         jogs[1,3] <- letra
         jogs[2,1] <- letra
         jogs[2,2] <- letra
         jogs[2,3] <- letra
         jogs[3,1] <- letra
         jogs[3,2] <- letra
         jogs[3,3] <- letra
     fimpara
fimpara

se (jogs[1,1] = jogs[2,2]) e (jogs[2,2] = jogs[3,3]) entao
   escreval(p1," Ganhou !")
fimse

se (jogs[1,1] = jogs[2,1]) e (jogs[2,1] = jogs[3,1]) entao
   escreval(p1," Ganhou !")
fimse

se (jogs[1,1] = jogs[1,2]) e (jogs[1,2] = jogs[1,3]) entao
   escreval(p1," Ganhou !")
fimse


fimalgoritmo
