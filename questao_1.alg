algoritmo "semnome"

var

num:vetor[1..5] de inteiro
maior,menor,index:inteiro

inicio


para index de 1 ate 5 faca
   leia(num[index])
   se index = 1 entao
      maior <- num[index]
      menor <- num[index]
   fimse
   
   se (num[index] > maior) entao
      maior <- num[index]
   fimse
   
    se (menor > num[index]) entao
      menor <- num[index]
   fimse
fimpara
escreval("Menor: ",menor)
escreval("Maior: ",maior)


fimalgoritmo
