algoritmo "semnome"

var

p1,p2,letra,letraO:caractere
jogs:vetor[1..3,1..3] de inteiro
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

se letra = "x" entao
   letra  <- "x"
   letraO <- "o"
fimse

se letra = "o" entao
   letra  <- "o"
   letraO <- "x"
fimse

escreval()


para row de 1 ate 3 faca
     para col de 1 ate 3 faca
      leia(jogs[row,col])
     fimpara
fimpara

se (jogs[1,1] = jogs[2,2]) e (jogs[2,2] = jogs[3,3]) entao //diagonal esquerda para direita
   escreval(p1," Ganhou !")
   interrompa
senao

   se (jogs[1,3] = jogs[2,2]) e (jogs[2,2] = jogs[3,1]) entao //diagonal direita para esquerda
      escreval(p1," Ganhou !")
      interrompa
   senao

      se (jogs[1,1] = jogs[1,2]) e (jogs[1,2] = jogs[1,3]) entao
         escreval(p1," Ganhou !")
         interrompa
      senao

         se (jogs[2,1] = jogs[2,2]) e (jogs[2,2] = jogs[2,3]) entao
            escreval(p1," Ganhou !")
            interrompa
         senao

            se (jogs[3,1] = jogs[3,2]) e (jogs[3,2] = jogs[3,3]) entao
               escreval(p1," Ganhou !")
               interrompa
            senao

               se (jogs[1,1] = jogs[2,1]) e (jogs[2,1] = jogs[3,1]) entao
                  escreval(p1," Ganhou !")
                  interrompa
               senao

                  se (jogs[1,2] = jogs[2,2]) e (jogs[2,2] = jogs[3,2]) entao
                     escreval(p1," Ganhou !")
                     interrompa
                  senao

                     se (jogs[1,3] = jogs[2,3]) e (jogs[2,3] = jogs[3,3]) entao
                        escreval(p1," Ganhou !")
                        interrompa
                     senao

                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse


fimalgoritmo
