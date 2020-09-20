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

?unlist       #Desfaz uma lista,converte a lista em vetor
lst1 <- list(6, "b", 15)
lst1
class(lst1)

unlist(lst1)
vec1 <- unlist(lst1)
class(vec1)
vec1

lst2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lst2
unlist(lst2)

mean(unlist(lst2))
round(mean(unlist(lst2)))

?do.call #aplica a funcao ao objeto inteiro

data <- list()
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

head(data)
do.call(rbind, data)
class(do.call(rbind, data))

y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum) #lapply aplica a cada elemento da lista
do.call(sum, y) #aplica a todos objetos


install.packages('plyr') 
library(plyr)

y <- list(1:3, 4:6, 7:9)
y

ldply(y, sum)


#Benchmark - fazer comparação entre a execucao de dois comandos
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum, y), ldply(y, sum))

N <- list(as.numeric(1:30000), as.numeric(4:60000), as.numeric(7:90000))

benchmark(do.call(sum, N), ldply(N, sum))

# strsplit()

texto <- "Esta é uma string."
strsplit(texto, " ") #Divide uma string ou vetor de caracteres

texto <- "Esta é uma string."
strsplit(texto, "") #Condicao divisao por caracter


dates <- c("1999-05-23", "2001-12-30", "2004-12-17")
temp  <- strsplit(dates, "-")
temp
class(temp)

matrix(unlist(temp), ncol = 3, byrow = TRUE) #desconstruindo lista temp e transformando em matriz

Names <- c("Brin, Sergey", "Page, Larry",
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Biz")

Cofounded <- rep(c("Google", "Twitter"), c(2,4)) 
temp <- strsplit(Names, ", ")
temp


frase <- "Xxxxxxxxxxxxx x xx xxx xxxx xxxxx xxx xx x"
palavras <- strsplit(frase, " ")[[1]] #separando por espaços
palavras
unique(tolower(palavras)) #coletas palavras unicas sem repeticao, converte para minusculas com tolower


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua2'))
antes
strsplit(as.character(antes$tipo),'_e_') #separação em uma coluna,retorna lista

library(stringr)
str_split_fixed(antes$tipo, "_e_", 2) #retorna uma matriz


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua2'))
antes
depois <- strsplit(as.character(antes$tipo),'_e_')
do.call(rbind, depois)

#Operadores de Atribuicao em funcoes ha diferencas
vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)

typeof(vec1)
typeof(vec2)


mean(x = 1:10)
x   #x nao encontrado pq nao criou x usou como atributo x existiu apenas em tempo de execução

mean(x <- 1:10) #cria o objeto dentro da funcao
x 

#Objetos
vetor1 = 1:4          #inteiros
vetor2 = c(1:4)      #inteiros
vetor3 = c(1,2,3,4) #numerico

vetor1
vetor2
vetor3

class(vetor1)
class(vetor2)
class(vetor3)
typeof(vetor1)
typeof(vetor2)
typeof(vetor3)

matriz1 = matrix(1:4, nr = 2) 
matriz2 = matrix(c(1:4), nr = 2)
matriz3 = matrix(c(1, 2, 3, 4), nr = 2) #double 

class(matriz1)
class(matriz2)
class(matriz3)
typeof(matriz1)
typeof(matriz2)
typeof(matriz3)

























