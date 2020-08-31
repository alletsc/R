#Notebook para demonstração de Funções

?sample #gera amostra
args(sample) #parametros da funcao
args(mean) 
args(sd)

abs(-43) #valor absoluto
sum(c(1:5))
mean(c(1:5)) #media
round(c(1.1:5.8)) #arredondar
rev(c(1:5)) #inverte o valor
seq(1:5) #cria vetor
sort(rev(c(1:5)))
append(c(1:5), 6) #adiciona elementos a um vetor

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

plot(rnorm(10))
mean(c(abs(vec1), abs(vec2)))

#Criando funcoes
funcao1 <- function(x) { x + x }
funcao1(10)
class(funcao1)

funcao2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
funcao2(3, 2)

playdado <- function() {
  num <- sample(1:6, size = 1) #size amostra de tamanho 1 #num em escopo local
  num
}

playdado()

#Escopo
print(num) #objeto num so existe dentro da funcao
num <- c(1:6) #crio num em escopo global
num 

#Argumentos nao definidos
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)

funcao3 <- function(...){
  df = data.frame(cbind(...)) #... siginifica que nao temos parametro definido
  print(df)
}

funcao3(vec1) #cria elementos df de acordo com os parametros que chamamos a funcao
funcao3(vec2, vec3)
funcao3(vec1, vec2, vec3)


#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versÃ£o amigÃ¡vel da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 
# list, numeric, character (list/vector) sapply ou lapply 
# matrix, data. frame (agregação por coluna) by / tapply 
# Operações por linha ou operações específicas apply 

#Usando Loop
lista1 <- list(a = (1:10), b = (45:77))

#Calculando o total de cada elemento da lista com loop for
valora = 0
valorb = 0
for (i in lista1$a){
  valora = valora + i 
}
for (j in lista1$b){
  valorb = valorb + j
}
print(valora)
print(valorb)

?sapply #aplica uma funcao a uma lista ou vetor
lista1
sapply(lista1, sum)
sapply(lista1, mean)

?apply #aplica funcoes por linhas ou colunas

x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean)
apply(x, 2, mean)
apply(x, 1, plot)

resultapply <- apply(x, 1, mean) #gravando em objeto
resultapply


escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

escola$Media = NA #criando uma coluna com valores nao disponiveis no dataframe
escola

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean) # slicing linhas vazias #gravando media na coluna media
escola
escola$Media = round(escola$Media) #round arredondar
escola


#tapply()
install.packages('sqldf') #sqldf para se trabalhar com a linguagem sql
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Alan', 'Alice', 'Alana'),
                      Semestre = c(1, 1, 1, 2, 2, 2),
                      Matematica = c(90, 80, 85, 87, 56, 79),
                      Geografia = c(100, 78, 86, 90, 98, 67),
                      Quimica = c(76, 56, 89, 90, 100, 87))

escola2

#Linguagem SQL dentro do R
sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by aluno")
tapply(c(escola2$Matematica), escola2$Aluno, sum)

?by 

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[, c(2, 3, 4)], escola2$Semestre, colSums)



?lapply #aplica funcao sobre uma lista ou vetor

lista1 <- list(a = (1:10), b = (45:77))
lista1
lapply(lista1, sum)
sapply(lista1, sum)


?vapply #aplica funcao definindo formato de saida

vapply(lista1, fivenum, c(Min. = 0, "1stQu." = 0, Median = 0, "3rd Qu." = 0, Max = 0))


?replicate #replica a operacao x vezes
replicate(7, runif(10))

?mapply #aplica a funcao em mais de um elemento
mapply(rep, 1:4, 4:1)

?rapply

lista2 <- list(a = c(1:5), b = c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how = "list")





















