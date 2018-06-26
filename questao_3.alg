algoritmo "semnome"

var

//a,b,c,v,d:real
pais:caractere
hab:inteiro
res,taxa:real

inicio
//
//a <- (*3)/ 100
//b <-  200000
//c <- 1
//
//repita
//v <- v + a
//      se  v < b entao
//      d <- c + d
//          escreval(v)
//      fimse
//ate v > b
//fimrepita
//
//escreval("Com ",d," anos o pais A ultrapassara o pais B com ",v," de habitantes.")

escreval("Qual o pais que vc deseja realizar sua pesquisa !")
leia(pais)
escreval()
escreval("Quantos habitantes possui no ",pais," ? ")
leia(hab)
escreval()
escreval("Qual a taxa de crescimento atual ?")
leia(taxa)

res <- (hab * taxa)/100

escreval("O pais ",pais," está crescendo com",res," habitantes a cada ano")


fimalgoritmo
